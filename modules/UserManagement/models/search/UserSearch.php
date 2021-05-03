<?php

namespace app\modules\UserManagement\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use webvimark\modules\UserManagement\models\User;

/**
 * UserSearch represents the model behind the search form about `webvimark\modules\UserManagement\models\User`.
 */
class UserSearch extends webvimark\modules\UserManagement\models\search\UserSearch
{
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
		]);

        	$query->andFilterWhere(['like', 'username', $this->username])
			->andFilterWhere(['like', 'email', $this->email]);

		return $dataProvider;
	}
}