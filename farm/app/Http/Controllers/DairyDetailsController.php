<?php

namespace App\Http\Controllers;

use App\Models\DairyDetail;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DairyDetailsController extends Controller
{

    // Frontend
    

    public function DairyAll()
    {
        $dairyDetails = DairyDetail::all();
        return view('frontend.dairy', compact('dairyDetails',));
    }



    // Admin
    public function AllDairy()
    {
        $productDetails = DairyDetail::latest()->paginate(5);
        return view('admin.dairydetails.dairy_show', compact('productDetails',));
    }

    public function AllAdd()
    {
        return view('admin.dairydetails.dairy_add');
    }

    public function StoreDairy(Request $request)
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


        $productDetails = new DairyDetail;
        $productDetails->product_id           = $request->product_id;
        $productDetails->product_name         = $request->product_name;
        $productDetails->birthday             = $request->birthday;
        $productDetails->mother_id            = $request->mother_id;
        $productDetails->mother_production    = $request->mother_production;
        $productDetails->father_details       = $request->father_details;
        $productDetails->weight               = $request->weight;
        $productDetails->location             = $request->location;

        $productDetails->cost_price           = $request->cost_price;
        $productDetails->sale_price           = $request->sale_price;

        $productDetails->product_age          = $request->product_age;

        $productDetails->category_id          = "Dairy";

        // $productDetails->product_img_1        = $request->product_img_1;
        // $productDetails->product_img_2        = $request->product_img_2;
        // $productDetails->product_img_3        = $request->product_img_3;
        // $productDetails->product_img_4        = $request->product_img_4;
        // $productDetails->product_img_5        = $request->product_img_5;
        // $productDetails->product_img_6        = $request->product_img_6;

        // $productDetails->product_img_alt_1    = $request->product_img_alt_1;
        // $productDetails->product_img_alt_2    = $request->product_img_alt_2;
        // $productDetails->product_img_alt_3    = $request->product_img_alt_3;
        // $productDetails->product_img_alt_4    = $request->product_img_alt_4;
        // $productDetails->product_img_alt_5    = $request->product_img_alt_5;
        // $productDetails->product_img_alt_6    = $request->product_img_alt_6;

        $productDetails->user_id = Auth::user()->id;
        $productDetails->save();


        return Redirect()->back()->with('success', 'Product Details Inserted Successfully.');
    }

    public function EditDairy($id)
    {
        # code...        
        $productDetails = DairyDetail::find($id);

        return view('admin.dairydetails.dairy_edit', compact('productDetails'));
    }

    public function UpdateDairy(Request $request, $id)
    {
        # code...

        $product_id           = $request->product_id;
        $product_name         = $request->product_name;
        $birthday             = $request->birthday;
        $mother_id            = $request->mother_id;
        $mother_production    = $request->mother_production;
        $father_details       = $request->father_details;
        $weight               = $request->weight;
        $product_age          = $request->product_age;
        $cost_price           = $request->cost_price;
        $sale_price           = $request->sale_price;
        $location             = $request->location;

        DB::table('dairy_details')
            ->where('id', $id)
            ->update([

                'product_id'           => $product_id,
                'product_name'         => $product_name,
                'birthday'             => $birthday,
                'mother_id'            => $mother_id,
                'mother_production'    => $mother_production,
                'father_details'       => $father_details,
                'weight'               => $weight,
                'product_age'          => $product_age,
                'cost_price'           => $cost_price,
                'sale_price'           => $sale_price,
                'location'             => $location,
                'user_id'              => Auth::user()->id,
                'updated_at'           => Carbon::now()
            ]);

        return Redirect()->route('dairy.all')->with('success', 'Product Details Updated Successfully.');
    }




    public function DeleteDairy($id)
    {

        DB::table('dairy_details')->where('id', '=', $id)->delete();

        return Redirect()->route('dairy.all')->with('success', 'Product Deleted Successfully.');
    }
}