<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
$model = new \app\models\Chat();
$chatModel = new \app\models\ChatMessage();
$chatId = Yii::$app->request->get('chat');
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
                    <?php $messageId = $message['id']; ?>
                    <?php if($message->user_id==Yii::$app->user->id): ?>
                            <div class="outgoing_msg">
                                <div class="sent_msg">
                                    <p><?=$message['message']?></p>
                                    <span class="time_date"> 11:01 AM    |    June 9</span> </div>
                            </div>
                    <?php else: ?>
                            <div class="incoming_msg">
                                <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                                <div class="received_msg">
                                    <div class="received_withd_msg">
                                        <p><?=$message['message']?></p>
                                        <span class="time_date"> 11:01 AM    |    June 9</span></div>
                                </div>
                            </div>
                    <?php endif; ?>
                    <?php endforeach; ?>

                </div>
                <?php $form = ActiveForm::begin(['action'=>['chat/write-chat']]); ?>
                <div class="type_msg">
                    <?php $isGuest = Yii::$app->user->isGuest; ?>
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