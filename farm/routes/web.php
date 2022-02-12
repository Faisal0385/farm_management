<?php

use App\Http\Controllers\AgroDetailsController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DairyDetailsController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\InquiryController;
use App\Http\Controllers\ProductDetailsController;
use App\Http\Controllers\ProductionController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\VaccineController;
use App\Http\Controllers\VaccineName;
use App\Http\Controllers\VaccineNameController;
use App\Models\AgroDetails;
use App\Models\Inquiry;
use App\Models\ProductDetails;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[HomeController::class, 'HomeView'])->name('/');

Route::get('/about', function () {
    return view('about');
})->name('about');

// Contact Us
Route::get('/contact', [ContactController::class, 'contactShow'])->name('contact');
Route::post('/contact/store', [ContactController::class, 'storeContact'])->name('contact.store');

// Inquiry Form
Route::post('/inquiry/store', [InquiryController::class, 'storeInquiry'])->name('inquiry.store');


// Registration/Login Form
Route::get('/registration', [RegisterController::class, 'registerShow'])->name('registration');
Route::post('/register/store', [RegisterController::class, 'storeRegister'])->name('register.store');



// BACKEND
#########################################################################################################################
// Category Controller
Route::get('/category/all', [CategoryController::class, 'AllCat'])->name('category.all');
Route::get('/category/edit/{id}', [CategoryController::class, 'EditCat'])->name('category.edit');
Route::get('/category/delete/{id}', [CategoryController::class, 'DeleteCat'])->name('category.delete');

Route::post('/category/store', [CategoryController::class, 'StoreCat'])->name('category.store');
Route::post('/category/update/{id}', [CategoryController::class, 'UpdateCat'])->name('category.update');


// SubCategory Controller
Route::get('/subcategory/all', [SubCategoryController::class, 'AllSubCat'])->name('subcategory.all');
Route::get('/subcategory/edit/{id}', [SubCategoryController::class, 'EditSubCat'])->name('subcategory.edit');
Route::get('/subcategory/delete/{id}', [SubCategoryController::class, 'DeleteSubCat'])->name('subcategory.delete');

Route::post('/subcategory/store', [SubCategoryController::class, 'StoreSubCat'])->name('subcategory.store');
Route::post('/subcategory/update/{id}', [SubCategoryController::class, 'UpdateSubCat'])->name('subcategory.update');


// Brand Controller
Route::get('/brand/all', [BrandController::class, 'AllBrand'])->name('brand.all');
Route::get('/brand/edit/{id}', [BrandController::class, 'EditBrand'])->name('brand.edit');
Route::get('/brand/delete/{id}', [BrandController::class, 'DeleteBrand'])->name('brand.delete');

Route::post('/brand/store', [BrandController::class, 'StoreBrand'])->name('brand.store');
Route::post('/brand/update/{id}', [BrandController::class, 'UpdateBrand'])->name('brand.update');


// Product Controller
Route::get('/product/all', [ProductDetailsController::class, 'AllProduct'])->name('product.all');
Route::get('/product/add', [ProductDetailsController::class, 'AllAdd'])->name('product.add');
Route::get('/product/edit/{id}', [ProductDetailsController::class, 'EditProduct'])->name('product.edit');
Route::get('/product/delete/{id}', [ProductDetailsController::class, 'DeleteProduct'])->name('product.delete');

Route::post('/product/store', [ProductDetailsController::class, 'StoreProduct'])->name('product.store');
Route::post('/product/update/{id}', [ProductDetailsController::class, 'UpdateProduct'])->name('product.update');

## Frontend Product
Route::get('/dairyProduct', [ProductDetailsController::class, 'ProductAll'])->name('dairyProduct');
Route::get('/dairyProduct/details/{id}', [ProductDetailsController::class, 'ProductDetails'])->name('product.details');


// Agro Controller
Route::get('/agro/all', [AgroDetailsController::class, 'AllAgro'])->name('agro.all');
Route::get('/agro/add', [AgroDetailsController::class, 'AllAdd'])->name('agro.add');
Route::get('/agro/edit/{id}', [AgroDetailsController::class, 'EditAgro'])->name('agro.edit');
Route::get('/agro/delete/{id}', [AgroDetailsController::class, 'DeleteAgro'])->name('agro.delete');

Route::post('/agro/store', [AgroDetailsController::class, 'StoreAgro'])->name('agro.store');
Route::post('/agro/update/{id}', [AgroDetailsController::class, 'UpdateAgro'])->name('agro.update');

### Frontend Agro Controller
Route::get('/agro', [AgroDetailsController::class, 'AgroAll'])->name('agro');
Route::get('/agro/details/{id}', [AgroDetailsController::class, 'AgroDetails'])->name('agro.details');


// Dairy Controller
Route::get('/dairy/all', [DairyDetailsController::class, 'AllDairy'])->name('dairy.all');
Route::get('/dairy/add', [DairyDetailsController::class, 'AllAdd'])->name('dairy.add');
Route::get('/dairy/edit/{id}', [DairyDetailsController::class, 'EditDairy'])->name('dairy.edit');
Route::get('/dairy/delete/{id}', [DairyDetailsController::class, 'DeleteDairy'])->name('dairy.delete');

Route::post('/dairy/store', [DairyDetailsController::class, 'StoreDairy'])->name('dairy.store');
Route::post('/dairy/update/{id}', [DairyDetailsController::class, 'UpdateDairy'])->name('dairy.update');

## Frontend Dairy
Route::get('/dairy', [DairyDetailsController::class, 'DairyAll'])->name('dairy');
Route::get('/dairy/details/{id}', [DairyDetailsController::class, 'DairyDetails'])->name('dairy.details');


// Production Controller
Route::get('/production/all', [ProductionController::class, 'AllProduction'])->name('production.all');
Route::get('/production/add', [ProductionController::class, 'AllAdd'])->name('production.add');
Route::get('/production/edit/{id}', [ProductionController::class, 'EditProduction'])->name('production.edit');
Route::get('/production/delete/{id}', [ProductionController::class, 'DeleteProduction'])->name('production.delete');

Route::post('/production/store', [ProductionController::class, 'StoreProduction'])->name('production.store');
Route::post('/production/update/{id}', [ProductionController::class, 'UpdateProduction'])->name('production.update');

// Vaccine Controller
Route::get('/vaccine/all', [VaccineController::class, 'AllVaccine'])->name('vaccine.all');
Route::get('/vaccine/edit/{id}', [VaccineController::class, 'EditVaccine'])->name('vaccine.edit');
Route::get('/vaccine/delete/{id}', [VaccineController::class, 'DeleteVaccine'])->name('vaccine.delete');

Route::post('/vaccine/store', [VaccineController::class, 'StoreVaccine'])->name('vaccine.store');
Route::post('/vaccine/update/{id}', [VaccineController::class, 'UpdateVaccine'])->name('vaccine.update');

// Vaccine Name Controller
Route::get('/vaccineName/all', [VaccineNameController::class, 'AllVaccineName'])->name('vaccineName.all');
Route::get('/vaccineName/edit/{id}', [VaccineNameController::class, 'EditVaccineName'])->name('vaccineName.edit');
Route::get('/vaccineName/delete/{id}', [VaccineNameController::class, 'DeleteVaccineName'])->name('vaccineName.delete');

Route::post('/vaccineName/store', [VaccineNameController::class, 'StoreVaccineName'])->name('vaccineName.store');
Route::post('/vaccineName/update/{id}', [VaccineNameController::class, 'UpdateVaccineName'])->name('vaccineName.update');




Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {

    // $users = User::all();
    $users = DB::table('users')->get();

    return view('dashboard', compact('users'));
})->name('dashboard');
