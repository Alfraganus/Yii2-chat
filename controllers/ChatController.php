<?php

namespace app\controllers;

use app\models\Chat;
use app\models\ChatMessage;
use app\models\User;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;

class ChatController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actionStartChat()
    {
        $model = new Chat();
        $chatMessage = new ChatMessage();

        $post = Yii::$app->request->post();
        if ($model->load($post)) {
            $existingModel = Chat::find()->where(['receiver_id'=>intval(Yii::$app->user->id),'sender_id'=>intval($model->sender_id)]);
            if($existingModel->exists()) {
                return $this->redirect(['site/chats','chat'=>$existingModel->one()->id]);
            } else {
                $model->receiver_id = Yii::$app->user->id;
                $model->save(false);
                $chatMessage->chat_id = $model->id;
                $chatMessage->save(false);
            }

        }
        return $this->redirect(Yii::$app->request->referrer);
     }

     public function actionWriteChat()
     {
         $model = new ChatMessage();
         if ($model->load(Yii::$app->request->post()) && $model->message !='') {
             $isAdmin = User::getUserRole(Yii::$app->user->id);
             if ($isAdmin !='Admin' && $model::checkTyper(Yii::$app->user->id,$model->chat_id)==false) {
                 Yii::$app->session->setFlash('danger', "You are not participated in chat, you can only write in your chat!");
                 return $this->redirect(Yii::$app->request->referrer);
             }
             $model->user_id =Yii::$app->user->id;
             $model->time = time();
                 if($isAdmin=='Admin') {
                     $owner = 'Admin';
                 } else {
                     $owner= ChatMessage::checkTyper($model->user_id,$model->chat_id);
                 }
             $model->owner =$owner;
             $model->save(false);
         }
         return $this->redirect(Yii::$app->request->referrer);
     }

     public function actionMarkIncorrectMessage($message_id,$chat_id)
     {
         $getMessage = ChatMessage::findOne(['chat_id'=>$chat_id,'id'=>$message_id]);
         $getMessage->active=0;
         $getMessage->save(false);
         Yii::$app->session->setFlash('warning', "The message has been marked as Incorrect!");
         return $this->redirect(Yii::$app->request->referrer);
     }



}
