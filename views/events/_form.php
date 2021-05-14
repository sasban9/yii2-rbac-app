<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Events */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="events-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <?= $form->field($model, 'category_id')->textInput() ?>

    <?= $form->field($model, 'status_id')->textInput() ?>

    <?= $form->field($model, 'asset_type')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'venue_address_id')->textInput() ?>

    <?= $form->field($model, 'tkt_details_out_type_id')->textInput() ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'url')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'terms')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'refund_policy')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'privacy_policy')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'short_url')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'group_id')->hiddenInput(['value'=>Yii::$app->user->identity->group_id])->label(false); ?>


    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>