<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%chat_message}}`.
 */
class m210717_062049_create_chat_message_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%chat_message}}', [
            'id' => $this->primaryKey(),
            'chat_id'=>$this->integer()->null(),
            'message'=>$this->text()->null(),
            'owner'=> 'ENUM(`sender`, `receiver`)',
            'time'=>$this->integer()->null()
        ]);
        $this->addForeignKey(
            'fk-chat_message-chat_id',
            'chat_message',
            'chat_id',
            'chat',
            'id',
            'CASCADE'
        );
        $this->createIndex(
            'idx-chat_message-chat_id',
            'chat_message',
            'chat_id'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropForeignKey(
            'fk-chat_message-chat_id',
            'chat_message',
        );
        $this->dropIndex(
            'idx-chat_message-chat_id',
            'chat_message',
        );
        $this->dropTable('{{%chat_message}}');
    }
}
