<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function dashboard(){
        // dd(Hash::make('ali12345'));
        return view('panel.dashboard');
    }

}
