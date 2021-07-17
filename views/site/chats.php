<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
$model = new \app\models\Chat();
$chatModel = new \app\models\ChatMessage();
$chatId = Yii::$app->request->get('chat');
?>

<div class="container">
    <h3 class=" text-center">Messaging</h3>
    <?php $form = ActiveForm::begin(['action'=>['chat/start-chat']]); ?>
    <div class="form-group">
        <?= $form->field($model, 'sender_id')->dropDownList([1=>'Alfra']) ?>
    </div>
    <button class="btn btn-primary pull-right">Create new chat</button>
    <?php ActiveForm::end(); ?>
    <div class="messaging">
        <div class="inbox_msg">
            <div class="inbox_people">
                <div class="headind_srch">
                    <div class="recent_heading">
                        <h4>Recent</h4>
                    </div>
                    <div class="srch_bar">
                        <div class="stylish-input-group">
                            <input type="text" class="search-bar"  placeholder="Search" >
                            <span class="input-group-addon">
                <button type="button"> <i class="fa fa-search" aria-hidden="true"></i> </button>
                </span> </div>
                    </div>
                </div>
                <div class="inbox_chat">

                    <?php foreach ($chats as $chat):  ?>
                        <a  href="<?=\yii\helpers\Url::to(['chats','chat'=>$chat['id']])?>">
                        <div class="chat_list <?=$chat['id']==$chatId?'active_chat':''?>">
                            <div class="chat_people">
                                <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                                <div class="chat_ib">
                                    <h5><?=$chat['sender_id']?> <span class="chat_date">Dec 25</span></h5>
                                    <p><?=\app\models\ChatMessage::getLastMessage($chat['id'])?></p>
                                </div>
                            </div>
                        </div>
                        </a>
                    <?php endforeach; ?>

                </div>
            </div>
            <div class="mesgs">
                <div class="msg_history">
                    <?php foreach ($messages as $message): ?>
                    <?php $messageId = $message['id']; ?>
                    <?php if($message->owner=='sender'): ?>
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
                    <div class="input_msg_write">
                        <?= $form->field($chatModel, 'message')->textInput(['class'=>'write_msg','placeholder'=>'Type a message'])->label(false) ?>
                        <?= $form->field($chatModel, 'chat_id')->hiddenInput(['value'=>$chatId])->label(false) ?>
                        <button class="msg_send_btn" type="submit"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>


        <p class="text-center top_spac"> Design by <a target="_blank" href="https://www.linkedin.com/in/sunil-rajput-nattho-singh/">Sunil Rajput</a></p>

    </div></div>