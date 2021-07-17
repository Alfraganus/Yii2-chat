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
            $model->receiver_id = Yii::$app->user->id;
            $model->save(false);
            $chatMessage->chat_id = $model->id;
            $chatMessage->save(false);
        }
        return $this->redirect(Yii::$app->request->referrer);
     }

     public function actionWriteChat()
     {
         $model = new ChatMessage();
         if ($model->load(Yii::$app->request->post())) {
            $model->owner ='sender';
            $model->time = time();
            $model->save(false);
         }
         return $this->redirect(Yii::$app->request->referrer);
     }



}
