<?php

use app\models\Sales;
use app\models\SalesOverallPayment;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Users';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-model-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create new user', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'username',
            [
                'attribute' => 'Role',
                'value' =>  function ($model) {
        $role = Yii::$app->authManager->getRolesByUser($model->id);
                    return implode(array_keys($role));
                }
            ],
            [
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model->status == '10' ? '<span style="color:green;">Active</span>' : '<span style="color:red;">Inactive</span>';
                },
                'filter' => array(10 => "Active",  0 => 'InActive'),
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
