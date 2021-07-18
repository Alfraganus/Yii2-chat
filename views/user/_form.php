<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\UserModel */
/* @var $form yii\widgets\ActiveForm */
//var_dump(Yii::$app->authManager->getRoles());
$roles = Yii::$app->authManager->getRoles();
$defaultValue = [];
if(!$model->isNewRecord) {
   $getRole= Yii::$app->authManager->getRolesByUser($model->id);
    $defaultValue = ['options'=>[array_keys($getRole)[0]=>['Selected'=>true]]];
}
?>

<div class="user-model-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'username') ?>
    <?= $form->field($model, 'email') ?>
    <?= $form->field($model, 'role')->dropDownList(array_combine(array_keys($roles), array_keys($roles)), $defaultValue) ?>
    <? if ($model->isNewRecord): ?>
        <?= $form->field($model, 'password')->passwordInput() ?>
        <?= $form->field($model, 'retypePassword')->passwordInput() ?>
    <?php endif; ?>


    <div class="form-group">
        <?= Html::submitButton('Saqlash', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
