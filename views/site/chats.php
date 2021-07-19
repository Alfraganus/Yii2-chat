<?php

use app\models\User;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
$model = new \app\models\Chat();
$chatModel = new \app\models\ChatMessage();
$chatId = Yii::$app->request->get('chat');
$isGuest = Yii::$app->user->isGuest;
$isStranger = $chatModel::checkTyper(Yii::$app->user->id,$chatId);
$isAdmin = User::getUserRole(Yii::$app->user->id);
?>
<div class="container">
    <h3 class=" text-center">Messaging</h3>

    <div class="messaging">
        <div class="inbox_msg">
            <div class="inbox_people">
                <div class="headind_srch">
                    <div class="recent_heading">
                        <h4>Recent chats</h4>
                    </div>
                    <div class="srch_bar"> </div>

                </div>
                <div class="inbox_chat">
                    <?php if (!$isGuest): ?>
                    <?php $form = ActiveForm::begin(['action'=>['chat/start-chat']]); ?>
                    <div class="row">
                        <div class="col-lg-8">
                            <?= $form->field($model, 'sender_id')->dropDownList([1=>'Alfra'])->label(false) ?>
                        </div>
                        <div class="col-lg-4">
                            <button class="btn btn-primary pull-right">Create new chat</button>
                        </div>
                    </div>
                    <?php ActiveForm::end(); ?>
                    <?php endif; ?>
                    <?php foreach ($chats as $chat):  ?>
                        <a  href="<?=\yii\helpers\Url::to(['chats','chat'=>$chat['id']])?>">
                        <div class="chat_list <?=$chat['id']==$chatId?'active_chat':''?>">
                            <div class="chat_people">
                                <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                                <div class="chat_ib">
                                    <h5><?=\app\models\ChatMessage::getChatterName($chat['sender_id']) ?> <span class="chat_date">Dec 25</span></h5>
                                    <p><?=\app\models\ChatMessage::getLastMessage($chat['id'])?></p>
                                </div>
                            </div>
                        </div>
                        </a>
                    <?php endforeach; ?>

                </div>
            </div>
            <div class="mesgs" style="display: <?=$chatId?'':'none'?>">
                <div class="msg_history">
                    <?php foreach ($messages as $message): ?>
                     <?php
                        $allow=false;
                        if($message['active']==0 && $isAdmin == 'Admin') {
                            $allow=true;
                        } elseif ($message['active']==0 && $isAdmin != 'Admin') {
                            $allow=false;
                        }
                        ?>
                        <?php if ($isGuest || $isStranger==false): ?>
                            <?= Yii::$app->controller->renderPartial('_unauthorized_chat', [
                                'message' => $message,
                                'allow'=>$allow
                            ]); ?>
                        <?php else: ?>
                            <?= Yii::$app->controller->renderPartial('_authorized_chat', [
                                'message' => $message,
                                'allow'=>$allow
                            ]); ?>

                        <?php endif; ?>
                    <?php endforeach; ?>
                </div>
                <?php $form = ActiveForm::begin(['action'=>['chat/write-chat']]); ?>
                <div class="type_msg">

                    <div class="input_msg_write">
                        <?= $form->field($chatModel, 'message')->textInput([
                            'class' => 'write_msg',
                            'disabled'=>$isGuest ? true:false,
                            'placeholder' => $isGuest ? 'You should log in to type' : 'Type a message'
                        ])->label(false) ?>
                        <?= $form->field($chatModel, 'chat_id')->hiddenInput(['value'=>$chatId])->label(false) ?>
                        <button class="msg_send_btn" type="submit">Send<i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>


    </div></div>