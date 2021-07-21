<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "chat_message".
 *
 * @property int $id
 * @property int|null $chat_id
 * @property string|null $message
 * @property string|null $owner
 * @property int|null $time
 * @property int|null $user_id
 * @property int|null $active
 *
 * @property Chat $chat
 */
class ChatMessage extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'chat_message';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['chat_id', 'time','user_id','active'], 'integer'],
            [['owner', 'message'], 'string'],
            [['chat_id'], 'exist', 'skipOnError' => true, 'targetClass' => Chat::className(), 'targetAttribute' => ['chat_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'chat_id' => 'Chat ID',
            'ownver' => 'Message owner',
            'message' => 'Message',
            'time' => 'Time',
        ];
    }

    public static function getLastMessage($chat_id)
    {
        $chatMessage = ChatMessage::find()
            ->where(['chat_id'=>$chat_id])
            ->andWhere(['active'=>1])
            ->orderBy('id DESC')
            ->one();
        return $chatMessage->message??'';
    }

    public static function getLastChatTime($chat_id)
    {
        $chatMessage = ChatMessage::find()
            ->where(['chat_id'=>$chat_id])
            ->orderBy('time DESC')
            ->one();
        if(!empty($chatMessage->time)) {
            return date('D | H:i',$chatMessage->time);
        } else {
            return '';
        }
    }



    public static function getChatterName($user_id,$chat_id)
    {
        $sender = Chat::find()->where(['id' => $chat_id])->andWhere(['sender_id' => $user_id]);
        $receiver = Chat::find()->where(['id' => $chat_id])->andWhere(['receiver_id' => $user_id]);
        if ($sender->exists()) {
            $name = $sender->one()->sender->username;
        } elseif ($receiver->exists()) {
            $name = $receiver->one()->receiver->username;
        } else {
            $chat = Chat::find()->where(['id' => $chat_id])->one();
            $name = $chat->sender->username;
        }
        return $name;
    }

    public static function checkTyper($user_id,$chat_id)
    {
        $typer = null;
        $chatUsername = Chat::find();
        if($chatUsername->where(['id'=>$chat_id])->andWhere(['sender_id'=>$user_id])->exists()) {
            $typer = 'sender';
        } elseif ($chatUsername->where(['id'=>$chat_id])->andWhere(['receiver_id'=>$user_id])->exists()) {
            $typer = 'receiver';
        } else {
            return false;
        }
        return $typer;
    }

    /**
     * Gets query for [[Chat]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getChat()
    {
        return $this->hasOne(Chat::className(), ['id' => 'chat_id']);
    }
}
