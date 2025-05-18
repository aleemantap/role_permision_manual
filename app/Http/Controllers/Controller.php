<?php

namespace App\Http\Controllers;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Auth;
use App\Models\PermissionRoleModel;

abstract class Controller extends BaseController
{
    public function getPermissionInController($role_permission)
    {
        $permissionRole = PermissionRoleModel::getPermission($role_permission,Auth::user()->role_id);
        if(empty($permissionRole))
        {
            return abort(404);
        }
    }

    public function cekPermission($role_permission)
    {
        $permissionRole = PermissionRoleModel::getPermission($role_permission,Auth::user()->role_id);
        return $permissionRole;
    }
}
