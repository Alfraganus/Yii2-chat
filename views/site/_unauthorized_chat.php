<?php

use app\models\User;
use yii\helpers\Url;
$isAdmin = User::getUserRole(Yii::$app->user->id);
?>
<?php if($message['owner']=='sender'): ?>
    <div class="outgoing_msg">
        <div class="sent_msg">
            <?php if ($isAdmin == 'Admin'): ?>
                <a href="<?= Url::to(['chat/mark-incorrect-message', 'chat_id' => $message['chat_id'], 'message_id' => $message['id']]) ?>">
                    Mark as Incorrect <i class="glyphicon glyphicon-ban-circle"></i></a>
            <?php endif; ?>
            <p><?= $message['message'] ?></p>
            <span class="time_date"><?= date('H:i d-M', strtotime($message['time'])) ?></span></div>
    </div>
    <?php elseif($message['owner']=='admin'): ?>
    <div class="outgoing_msg">
        <div class="admin_msg">
            <p><?=$message['message']?></p>
            <span class="time_date"><?=date('H:i d-M',strtotime($message['time'])) ?> (by admin)</span> </div>
    </div>
<?php else: ?>
    <div class="incoming_msg">
        <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
        <div class="received_msg">
            <div class="received_withd_msg">
                <?php if ($isAdmin == 'Admin'): ?>
                    <a href="<?= Url::to(['chat/mark-incorrect-message', 'chat_id' => $message['chat_id'], 'message_id' => $message['id']]) ?>">
                        Mark as Incorrect <i class="glyphicon glyphicon-ban-circle"></i></a>
                <?php endif; ?>
                <p><?=$message['message']?></p>
                <span class="time_date"><?=date('H:i d-M',strtotime($message['time'])) ?></span> </div>
        </div>
    </div>
<?php endif; ?>