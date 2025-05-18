<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function login(){
        // dd(Hash::make('ali12345'));
        if(!empty(Auth::check()))
        {
            return redirect('panel/dashboard'); 
        }
        return view('auth.login');
    }

    public function auth_login(Request $request){
        // dd($request->all());
        $remember = !empty($request->remember) ?  true : false;
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password], $remember))
        {
            return redirect("panel/dashboard");
        }
        else
        {
            return redirect()->back()->with('error','Please Email And Password is Correct');
        }
    }

    public function logout(){
       Auth::logout();
       return redirect(url(''));
    }
}
