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
            [['chat_id', 'time'], 'integer'],
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
        $chatMessage = ChatMessage::find()->where(['chat_id'=>$chat_id])->orderBy('time DESC')->one();
        return $chatMessage->message??'';
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
