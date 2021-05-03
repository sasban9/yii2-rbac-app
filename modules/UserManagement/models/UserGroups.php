<?php

namespace app\modules\UserManagement\models;
use webvimark\modules\UserManagement\components\AuthHelper;


use Yii;

/**
 * This is the model class for table "user_groups".
 *
 * @property int $id
 * @property string|null $group_name
 */
class UserGroups extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user_groups';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id'], 'integer'],
            [['group_name'], 'string', 'max' => 45],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'group_name' => 'Group Name',
        ];
    }

    /**
     * Gets query for [[Users]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsers()
    {
        return $this->hasMany(User::className(), ['group_id' => 'id']);
    }
    
	public static function getAvailableGroups($showAll = false, $asArray = false)
	{
		$condition = (Yii::$app->user->isSuperAdmin OR $showAll) ? [] : ['group_name'=>Yii::$app->session->get(AuthHelper::SESSION_PREFIX_ROLES)];

		$result = static::find()->andWhere($condition)->all();

		return $asArray ? ArrayHelper::map($result, 'name', 'name') : $result;
	}
}