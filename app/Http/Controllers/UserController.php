<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\RoleModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function list(){
        $this->getPermissionInController('user');
        $data['getRecord'] = User::getRecord();
        return view('panel.user.list',$data);
    }

    public function add(){
        $this->getPermissionInController('add user');
        $data['getRole'] = RoleModel::getRecord();
        return view('panel.user.add',$data);
    }

    public function insert(Request $request){
    
       $request->validate([
             'email' => 'required|email|unique:users'
       ]);
       
       $save = new User();
       $save->name = trim($request->name);
       $save->email = trim($request->email);
       $save->password = Hash::make(trim($request->password));     
       $save->role_id = trim($request->role_id);   
       $save->save();

       return redirect('panel/user')->with('success','User Succesfully Created');

    //    return redirect()->back()->with('panel/user')->with('success','User Succesfully Created');
    }

    public function edit($id){
        $data['getRecord'] = User::getSingle($id);
        $data['getRole'] = RoleModel::getRecord($id);
        return view('panel.user.edit',$data);
    }

    public function update(Request $request){
      
    //     $request->validate([
    //         'email' => 'required|email|unique:users'
    //   ]);
      
      $save = User::find($request->id);
      $save->name = trim($request->name);
      $save->email = trim($request->email);
      if(!empty(trim($request->password)))
      {
        $save->password = Hash::make(trim($request->password));     
      }
     
      $save->role_id = trim($request->role_id);   
      $save->save();
 
        return redirect('panel/user')->with('success','User Succesfully Updated');
     }

     public function delete($id){
 
        $save = User::find($id);
        $save->delete();
 
        return redirect('panel/user')->with('success','User Succesfully Deleted');
     }
}
