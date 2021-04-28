<?php
namespace webvimark\modules\UserManagement\models\rbacDB;

use Yii;
use yii\rbac\DbManager;

class Group extends AbstractItem
{
    /**
     * @param int     $userId
     *
     * @return array|\yii\rbac\Group[]
     */
    public static function getUserGroup($userId)
    {
        $dbManager = Yii::$app->authManager instanceof DbManager ? Yii::$app->authManager : new DbManager();

        return $dbManager->getGroupByUser($userId);
    }
}
