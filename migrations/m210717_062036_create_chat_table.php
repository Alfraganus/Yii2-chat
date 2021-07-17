<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%chat}}`.
 */
class m210717_062036_create_chat_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%chat}}', [
            'id' => $this->primaryKey(),
            'sender_id' => $this->integer()->null(),
            'receiver_id' => $this->integer()->null(),
        ]);

        $this->addForeignKey(
            'fk-chat-sender_id',
            'chat',
            'sender_id',
            'user',
            'id',
            'CASCADE'
        );
        $this->addForeignKey(
            'fk-chat-receiver',
            'chat',
            'receiver_id',
            'user',
            'id',
            'CASCADE'
        );
        $this->createIndex(
            'idx-chat-sender_id',
            'chat',
            'sender_id'
        );

        $this->createIndex(
            'idx-chat-receiver_id',
            'chat',
            'receiver_id'
        );

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropIndex(
            'fk-chat-sender_id',
            'chat',
        );
        $this->dropIndex(
            'fk-chat-receiver',
            'chat',
        );

        $this->dropIndex(
            'idx-chat-sender_id',
            'chat',
        );
        $this->dropIndex(
            'idx-chat-receiver_id',
            'chat',
        );
        $this->dropTable('{{%chat}}');
    }
}
