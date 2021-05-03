<?php

namespace app\modules\UserManagement\models;

use Yii;
use yii\base\Model; 
// use webvimark\modules\UserManagement\models\User;
use app\modules\UserManagement\models\UserGroups;
 
class User extends \webvimark\modules\UserManagement\models\User
{ 
	/**
	* @inheritdoc
	*/
	public function rules()
	{
		return [
			['username', 'required'],
			['username', 'unique'],
			['username', 'trim'],

			[['status', 'email_confirmed'], 'integer'],

			['email', 'email'],
			['email', 'validateEmailConfirmedUnique'],

			['bind_to_ip', 'validateBindToIp'],
			['bind_to_ip', 'trim'],
			['bind_to_ip', 'string', 'max' => 255],

			['password', 'required', 'on'=>['newUser', 'changePassword']],
			['password', 'string', 'max' => 255, 'on'=>['newUser', 'changePassword']],
			['password', 'trim', 'on'=>['newUser', 'changePassword']],
			['password', 'match', 'pattern' => Yii::$app->getModule('user-management')->passwordRegexp],

			['repeat_password', 'required', 'on'=>['newUser', 'changePassword']],
			['repeat_password', 'compare', 'compareAttribute'=>'password'],
            [['group_id'], 'exist', 'skipOnError' => true, 'targetClass' => UserGroups::className(), 'targetAttribute' => ['group_id' => 'id']],
       
		];
	}
    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    public function getGroups()
	{
		return $this->hasMany(UserGroups::className(), ['group_name' => 'group_name'])
			->viaTable(Yii::$app->getModule('user-management')->user_group_table, ['id'=>'group_id']);
	}
}