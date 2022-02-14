<?php

namespace App\Http\Controllers;

use App\Models\Register;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RegisterController extends Controller
{
    //

    public function registerShow()
    {
        return view('frontend.registration');
    }

    public function storeRegister(Request $request)
    {

        // $validated = $request->validate(
        //     [
        //         'category_name' => 'required|unique:categories|max:255',
        //         'category_image' => 'required|mimes:jpg,jpeg,png',
        //     ],
        //     [
        //         'category_name.required' => 'Pls Input Category Name.',
        //         'category_name.unique' => 'Input Category Name Already Exist.',
        //         'category_name.max' => 'Category Name Should Be Less Then 255 Chars.',

        //         'category_image.required' => 'Category Image Required.',

        //     ]
        // );

        $checkEmail = Register::where('user_email', $request->user_email)->count();

        if ($checkEmail > 0) {
            return Redirect()->back()->with('warn', 'Email Already Exist.');
        } else {

            $register = new Register;
            $register->user_id       = hexdec(uniqid());
            $register->user_name     = $request->user_name;
            $register->user_email    = $request->user_email;
            $register->user_phone    = $request->user_phone;
            $register->user_pass     = $request->user_pass;
            $register->user_location = $request->user_location;
            $register->save();

            return Redirect()->back()->with('success', 'Registration is Successfull.');
        }
    }

    public function userLogin(Request $request)
    {

        $user_email = $request->user_email;
        $user_pass  = $request->user_pass;

        $checkEmail = Register::where('user_email', $user_email)->where('user_pass', $user_pass)->count();

        if($checkEmail > 0){

            $user_id = DB::table('registers')->where('user_email', $user_email)->value('user_id');

            session()->put('user_id', $user_id );

            return Redirect()->route('/');

        }else{
            return Redirect()->back()->with('warning_login', 'Pls provided valid email or password.');  
        }

    }

    public function userlogout()
    {
        # code...
        if(session()->has('user_id')){
            session()->forget('user_id');
        }

        return redirect('/');
    }



}
