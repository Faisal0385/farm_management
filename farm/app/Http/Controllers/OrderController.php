<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Register;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    //

    public function orderDetailsAll()
    {
        # code...
        $orders = Order::latest()->paginate(5);

        return view('admin.orders.order_show', compact('orders'));
    }


    public function orderStore(Request $request)
    {

        if (session()->has('user_id')) {


            $cartCheck = DB::table('carts')
                ->where('user_id', '=', session()->get('user_id'))->count();


            if ($cartCheck > 0) {

                if ($request->coupon_price == 0) {
                    $total_price = $request->final_price;
                } else {
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

                if ($done) {
                    // DB::table('carts')->where('user_id', '=', session()->get('user_id'))->delete();

                    $customer = DB::table('registers')->where('user_id', '=', session()->get('user_id'))->get();

                    $points = (int) $customer[0]->user_status;

                    if ($total_price >= 1000 && $total_price <= 2000) {
                        $points = (int) $customer[0]->user_status + 100;
                    } elseif ($total_price >= 2001 && $total_price <= 4000) {
                        $points = (int) $customer[0]->user_status + 1000;
                    } elseif ($total_price > 10000) {
                        $points = (int) $customer[0]->user_status + 5000;
                    }

                    DB::table('registers')
                        ->where('user_id', session()->get('user_id'))
                        ->update(['user_status' => $points]);
                } else {
                    return Redirect()->back()->with('success', 'Something went wrong.');
                }

                return Redirect()->back()->with('success', 'Order Placed Successfully.');
            } else {
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

            $allCarts = DB::table('orders')->where('user_id', '=', session()->get('user_id'))->get();

            $data = [];

            foreach ($allCarts as $allCart) {
                $newProductCodes = explode(',', $allCart->total_products);

                if (count($newProductCodes) > 1) {
                    foreach ($newProductCodes as $newProductCode) {
                        $productCodes = DB::table('product_details')->where('product_id', '=', $newProductCode)->get();
                        // var_dump($allCart);
                        array_push($data, $productCodes);
                    }
                } else {
                    $productCodes = DB::table('product_details')->where('product_id', '=', $newProductCodes)->get();
                    // var_dump($allCart);
                    array_push($data, $productCodes);
                }
            }

            return view('frontend.orderDetails', compact('allCarts', 'data'));
        } else {
            return redirect('/registration');
        }
    }
}
