<?php

namespace App\Http\Controllers;

use App\Models\AgroDetails;
use App\Models\DairyDetail;
use App\Models\ProductDetails;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function HomeView(){

        $agroDetails    = AgroDetails::all();
        $dairyDetails   = DairyDetail::all();
        $productDetails = ProductDetails::all();

        return view('home',compact('agroDetails','dairyDetails','productDetails'));
    }
}