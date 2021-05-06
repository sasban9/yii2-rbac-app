<?php

namespace app\modules\UserManagement\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\modules\UserManagement\models\Events;

/**
 * EventsSearch represents the model behind the search form of `app\modules\UserManagement\models\Events`.
 */
class EventsSearch extends Events
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'user_id', 'category_id', 'status_id', 'venue_address_id', 'tkt_details_out_type_id', 'group_id'], 'integer'],
            [['asset_type', 'name', 'url', 'description', 'terms', 'refund_policy', 'privacy_policy', 'short_url'], 'safe'],
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

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Events::find();

		if ( !Yii::$app->user->isSuperadmin )
		{ 
            $currentUserGroupId = User::getCurrentUser()->group_id;
            $query->andFilterWhere(['group_id' => $currentUserGroupId]);
		}

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);


        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'user_id' => $this->user_id,
            'category_id' => $this->category_id,
            'status_id' => $this->status_id,
            'venue_address_id' => $this->venue_address_id,
            'tkt_details_out_type_id' => $this->tkt_details_out_type_id,
            'group_id' => $this->group_id,
        ]);

        $query->andFilterWhere(['like', 'asset_type', $this->asset_type])
            ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'url', $this->url])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'terms', $this->terms])
            ->andFilterWhere(['like', 'refund_policy', $this->refund_policy])
            ->andFilterWhere(['like', 'privacy_policy', $this->privacy_policy])
            ->andFilterWhere(['like', 'short_url', $this->short_url]);

        return $dataProvider;
    }
}