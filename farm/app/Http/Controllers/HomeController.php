<?php

namespace App\Http\Controllers;

use App\Models\AgroDetails;
use App\Models\Category;
use App\Models\DairyDetail;
use App\Models\ProductDetails;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function HomeView(){

        $agroDetails    = AgroDetails::limit(1)->get();
        $dairyDetails   = DairyDetail::where('for_sale', '=', 'Yes')->get();
        $productDetails = ProductDetails::all();
        $categories     = Category::all();

        return view('home',compact('agroDetails','dairyDetails','productDetails','categories'));
    }
}
