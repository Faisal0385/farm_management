<?php

namespace App\Http\Controllers;

use App\Models\DairyDetail;
use App\Models\Vaccine;
use App\Models\VaccineName;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class VaccineController extends Controller
{
    //
    public function AllVaccine()
    {
        $productDetails = Vaccine::latest()->paginate(5);
        $dairyDetails   = DairyDetail::all();
        $VaccineNames   = VaccineName::all();
        return view('admin.vaccine.vaccine_show', compact('productDetails', 'dairyDetails','VaccineNames'));
    }

    public function StoreVaccine(Request $request)
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


        $productDetails = new Vaccine;
        $productDetails->vaccine_date         = $request->vaccine_date;
        $productDetails->cow_id               = $request->cow_id;
        $productDetails->vaccine              = $request->vaccine_id;
        $productDetails->vaccine_notification = $request->vaccine_notification;
        $productDetails->user_id = Auth::user()->id;
        $productDetails->save();


        return Redirect()->back()->with('success', 'Vaccine Details Inserted Successfully.');
    }

    public function DeleteVaccine($id)
    {

        DB::table('vaccines')->where('id','=', $id)->delete();

        return Redirect()->route('vaccine.all')->with('success', 'Vaccine Details Deleted Successfully.');
    }
}