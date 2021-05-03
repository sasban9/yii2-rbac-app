<?php

namespace app\modules\UserManagement;

use Yii;
use yii\helpers\ArrayHelper;

class UserManagementModule extends \webvimark\modules\UserManagement\UserManagementModule
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'app\modules\UserManagement\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();

        // custom initialization code goes here
    }
	/**
	 * Table aliases
	 *
	 * @var string
	 */ 
	public $user_group_table = '{{%user_groups}}'; 
	
	/**
	 * For Menu
	 *
	 * @return array
	 */
	public static function menuItems()
	{
        return [
			['label' => '<i class="fa fa-angle-double-right"></i> ' . UserManagementModule::t('back', 'Users'), 'url' => ['/user-management/user/index']],
			['label' => '<i class="fa fa-angle-double-right"></i> ' . UserManagementModule::t('back', 'Groups'), 'url' => ['/user-management/user-groups/index']],
			['label' => '<i class="fa fa-angle-double-right"></i> ' . UserManagementModule::t('back', 'Roles'), 'url' => ['/user-management/role/index']],
			['label' => '<i class="fa fa-angle-double-right"></i> ' . UserManagementModule::t('back', 'Permissions'), 'url' => ['/user-management/permission/index']],
			['label' => '<i class="fa fa-angle-double-right"></i> ' . UserManagementModule::t('back', 'Permission groups'), 'url' => ['/user-management/auth-item-group/index']],
			['label' => '<i class="fa fa-angle-double-right"></i> ' . UserManagementModule::t('back', 'Visit log'), 'url' => ['/user-management/user-visit-log/index']],
		]; 
	}
}