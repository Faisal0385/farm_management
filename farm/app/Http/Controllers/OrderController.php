<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    //
    public function orderStore(Request $request)
    {

        if (session()->has('user_id')) {


            $cartCheck = DB::table('carts')
                ->where('user_id', '=', session()->get('user_id'))->count();
            
            


            if ($cartCheck > 0) {

                if($request->coupon_price == 0){
                    $total_price = $request->final_price;
                }else{
                    $total_price = $request->coupon_price;
                }

                $orderSave = new Order;
                $orderSave->user_id        = session()->get('user_id');
                $orderSave->user_name      = $request->user_name;
                $orderSave->user_number    = $request->user_number;
                $orderSave->user_email     = $request->user_email;
                $orderSave->pyt_method     = $request->pyt_method;
                $orderSave->address        = $request->address;
                $orderSave->street         = $request->street;
                $orderSave->city           = $request->city;
                $orderSave->country        = "Bangladesh";
                $orderSave->pin_code       = $request->pin_code;
                $orderSave->street         = $request->street;
                $orderSave->total_products = $request->user_list;
                $orderSave->total_price    = $total_price;
                $done = $orderSave->save();
                
                if($done){
                    DB::table('carts')->where('user_id', '=', session()->get('user_id'))->delete();
                }else{
                    return Redirect()->back()->with('success', 'Something went wrong.');
                }

                return Redirect()->back()->with('success', 'Order Placed Successfully.');

            }else{
                return redirect('/registration');
            }
        } else {
            return redirect('/registration');
        }
    }

    public function orderDetails()
    {
        # code...

        if (session()->has('user_id')) {

            $allCarts = DB::table('orders')
                ->where('user_id', '=', session()->get('user_id'))->get();

            return view('frontend.orderDetails', compact('allCarts'));

        } else {
            return redirect('/registration');
        }


    }
}
