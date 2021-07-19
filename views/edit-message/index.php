<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ChatMessageSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Incorrect chat messages';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="chat-message-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'chat_id',
            'message:ntext',
            'owner',
            'user_id',
            //'active',
            //'time:datetime',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
