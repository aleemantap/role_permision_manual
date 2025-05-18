<?php

namespace App\Http\Controllers;

use App\Models\RoleModel;
use Illuminate\Http\Request;
use App\Models\PermissionModel;
use App\Models\PermissionRoleModel;
use Illuminate\Support\Facades\Auth;

class RolesController extends Controller
{
    public function list(){
       
        // $permissionRole = PermissionRoleModel::getPermission('role',Auth::user()->role_id);
        // if(empty($permissionRole))
        // {
        //     abort(404);
        // }
        $this->getPermissionInController('role');
        $data['add'] = $this->cekPermission('add role');
        $data['edit'] = $this->cekPermission('edit role');
        $data['delete'] = $this->cekPermission('delete role');
        $data['getRecord'] = RoleModel::getRecord();
        return view('panel.role.list', $data);
    }

    public function add(){

        $this->getPermissionInController('add role');

        $getPermission = PermissionModel::getRecord();
        //dd($getPermission);
        $data['getPermission'] =   $getPermission;
        return view('panel.role.add', $data);
    }

    public function insert(Request $request){
       // dd($request->all());
       $save = new RoleModel();
       $save->name = $request->name;
       $save->save();

       PermissionRoleModel::InsertUpdateRecord($request->permission_id, $save->id);

       return redirect('panel/roles')->with('success','Role Succesfully Created');
    }

    public function edit($id){

        $this->getPermissionInController('edit role');

        $data['getRecord'] = RoleModel::getSingle($id);
        $data['getPermission'] = PermissionModel::getRecord();
        $data['getRolePermission'] =  PermissionRoleModel::getRolePermission($id);
        return view('panel.role.edit',$data);
    }

    public function update(Request $request){
        // dd($request->all());
        $save = RoleModel::find($request->id);
        $save->name = $request->name;
        $save->save();

        PermissionRoleModel::InsertUpdateRecord($request->permission_id, $request->id);
 
        return redirect('panel/roles')->with('success','Role Succesfully Updated');
     }

     public function delete($id){
        $this->getPermissionInController('delete role');
        $save = RoleModel::find($id);
        $save->delete();
 
        return redirect('panel/roles')->with('success','Role Succesfully Deleted');
     }
}
