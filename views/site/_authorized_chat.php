<?php

use app\models\User;
use yii\helpers\Url;
$user_id = Yii::$app->user->id;
$isAdmin = User::getUserRole(Yii::$app->user->id);

//var_dump($allow);
?>
<?php if ($message['user_id'] == $user_id && $message['owner'] != 'admin'): ?>
    <div class="outgoing_msg">
        <div  class="<?=$allow?'incorrect_msg_sender':'sent_msg'?>">
            <?php if ($isAdmin == 'Admin'): ?>
                <a style="display:<?=$allow?'none':''?>" href="<?= Url::to(['chat/mark-incorrect-message', 'chat_id' => $message['chat_id'], 'message_id' => $message['id']]) ?>">
                    Mark as Incorrect <i class="glyphicon glyphicon-ban-circle"></i></a>
            <?php endif; ?>
            <p><?= $message['message'] ?></p>
            <span class="time_date"><?= date('H:i d-M', strtotime($message['time'])) ?></span></div>
    </div>
<?php elseif ($message['user_id'] != $user_id && $message['owner'] != 'admin'): ?>
    <div  class="incoming_msg">
        <div class="incoming_msg_img"><img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"></div>
        <div  class="<?=$allow?'incorrect_received_msg':'received_msg'?>">
            <?php if ($isAdmin == 'Admin'): ?>
                <a style="display:<?=$allow?'none':''?>" href="<?= Url::to(['chat/mark-incorrect-message', 'chat_id' => $message['chat_id'], 'message_id' => $message['id']]) ?>">
                    Mark as Incorrect <i class="glyphicon glyphicon-ban-circle"></i></a>
            <?php endif; ?>
            <div class="received_withd_msg">
                <p><?= $message['message'] ?></p>
                <span class="time_date"><?= date('H:i d-M', strtotime($message['time'])) ?></span></div>
        </div>
    </div>
<?php else: ?>
    <div class="outgoing_msg">
        <div class="admin_msg">
            <p><?= $message['message'] ?></p>
            <span class="time_date"><?= date('H:i d-M', strtotime($message['time'])) ?> (by admin)</span></div>
    </div>

<?php endif; ?>

