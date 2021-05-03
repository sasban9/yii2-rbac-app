<?php

namespace app\modules\UserManagement\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider; 
use app\modules\UserManagement\models\User; 

/**
 * This is the model class for table "user_groups".
 *
 * @property int $id
 * @property string|null $group_name
 *
 * @property User[] $users
 */
class UserSearch extends \webvimark\modules\UserManagement\models\search\UserSearch
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'status', 'superadmin', 'created_at', 'updated_at', 'email_confirmed', 'group_id'], 'integer'],
            [['username', 'auth_key', 'password_hash', 'confirmation_token', 'registration_ip', 'bind_to_ip', 'email'], 'safe'],
        ];
    }
	
    public function search($params)
	{
		$query = User::find();

		$query->with(['roles']);

		if ( !Yii::$app->user->isSuperadmin )
		{
			$query->where(['superadmin'=>0]);
            $currentUserGroupId = User::getCurrentUser()->group_id;
            $query->andFilterWhere(['group_id' => $currentUserGroupId]);
		}
		
		$dataProvider = new ActiveDataProvider([
			'query' => $query,
			'pagination' => [
				'pageSize' => Yii::$app->request->cookies->getValue('_grid_page_size', 20),
			],
			'sort'=>[
				'defaultOrder'=>[
					'id'=>SORT_DESC,
				],
			],
		]);

		if (!($this->load($params) && $this->validate())) {
			return $dataProvider;
		}

		if ( $this->gridRoleSearch )
		{
			$query->joinWith(['roles']);
		}

		$query->andFilterWhere([
			'id' => $this->id,
			'superadmin' => $this->superadmin,
			'status' => $this->status,
			Yii::$app->getModule('user-management')->auth_item_table . '.name' => $this->gridRoleSearch,
			'registration_ip' => $this->registration_ip,
			'created_at' => $this->created_at,
			'updated_at' => $this->updated_at,
			'email_confirmed' => $this->email_confirmed,
            'group_id' => $this->group_id,
		]);

        	$query->andFilterWhere(['like', 'username', $this->username])
			->andFilterWhere(['like', 'email', $this->email]);

		return $dataProvider;
	}
    
}