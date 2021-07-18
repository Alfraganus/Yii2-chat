<?php

namespace app\controllers;

use app\models\Chat;
use app\models\ChatMessage;
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
            $model->owner ='sender';
            $model->user_id =Yii::$app->user->id;
            $model->time = time();
            $model->save(false);
         }
         return $this->redirect(Yii::$app->request->referrer);
     }



}
