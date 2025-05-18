<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PermissionModel extends Model
{
    use HasFactory;

    protected $table = "permission";

    static public function getRecord(){
        $permisM =  PermissionModel::groupBy('groupby')->get();
        $result = array();
        foreach($permisM as $value)
        {
            $getPermissionGroup = PermissionModel::getPermissionGroup($value->groupby);
            $data = array();
            $data['id'] = $value->id;
            $data['name'] = $value->name;
            $group = array();
            foreach($getPermissionGroup as $valueG)
            {
                $dataG = array();
                $dataG['id'] =  $valueG->id;
                $dataG['name'] =  $valueG->name;
                $group [] = $dataG;
            }
            $data['group'] = $group;
            $result[] = $data; 
        }
        return $result;
    }

    static public function getSingle($id){
        return PermissionModel::find($id);
    }

    static public function getPermissionGroup($grp){
        return PermissionModel::where('groupby','=',$grp)->get();
    }
}
