<?php

namespace app\modules\UserManagement\models;

use Yii;

/**
 * This is the model class for table "Events".
 *
 * @property int $id
 * @property int|null $user_id
 * @property int|null $category_id
 * @property int|null $status_id
 * @property string|null $asset_type
 * @property int|null $venue_address_id
 * @property int|null $tkt_details_out_type_id
 * @property string|null $name
 * @property string|null $url
 * @property string|null $description
 * @property string|null $terms
 * @property string|null $refund_policy
 * @property string|null $privacy_policy
 * @property string|null $short_url
 * @property int|null $group_id
 */
class Events extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'Events';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'category_id', 'status_id', 'venue_address_id', 'tkt_details_out_type_id', 'group_id'], 'integer'],
            [['asset_type', 'name', 'url', 'description', 'terms', 'refund_policy', 'privacy_policy', 'short_url'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'category_id' => 'Category ID',
            'status_id' => 'Status ID',
            'asset_type' => 'Asset Type',
            'venue_address_id' => 'Venue Address ID',
            'tkt_details_out_type_id' => 'Tkt Details Out Type ID',
            'name' => 'Name',
            'url' => 'Url',
            'description' => 'Description',
            'terms' => 'Terms',
            'refund_policy' => 'Refund Policy',
            'privacy_policy' => 'Privacy Policy',
            'short_url' => 'Short Url',
            'group_id' => 'Group ID',
        ];
    }
}
