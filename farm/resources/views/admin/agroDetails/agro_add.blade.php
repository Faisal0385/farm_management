<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Add Agro Details 
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    @if(session('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>{{ session('success') }}</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                    @endif



                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Add Agro Details</h5>
                            <form action="{{ route('agro.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Cow's ID</label>
                                            <input type="text" name="product_id" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Cow's Name</label>
                                            <input type="text" name="product_name" class="form-control">
                                        </div>
                                    </div>
                                </div>                                
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Weight</label>
                                            <input type="text" name="weight" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Milk/Day</label>
                                            <input type="text" name="milk_per_day" class="form-control">
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Cost Price</label>
                                            <input type="text" name="cost_price" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Sale Price</label>
                                            <input type="text" name="sale_price" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Product Breed</label>
                                            <input type="text" name="product_breed" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Age</label>
                                            <input type="text" name="product_age" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Gender</label>
                                            <select name="product_gender" class="form-select form-select-md" aria-label=".form-select-sm example">
                                                <option readonly value="">Pls Select Gender</option>
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                                <option value="other">Other</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="" class="form-label">Location</label>
                                            <input type="text" name="location" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="" class="form-label">Agro Detail Short</label>
                                    <textarea name="product_detail_short" class="form-control" id="" cols="30" rows="5"></textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="" class="form-label">Agro Detail Long</label>
                                    <textarea name="product_detail_long" class="form-control" id="" cols="30" rows="5"></textarea>
                                </div>

                                <br>
                                <br>
                                <br>
                                <br>
                                <label for="" class="form-label">Choose Image 1:</label>
                                <div class="mb-3">
                                    <input type="file" name="product_image_1" class="form-control">
                                </div>


                                <label for="" class="form-label">Choose Image 2:</label>
                                <div class="mb-3">
                                    <input type="file" name="product_image_2" class="form-control">
                                </div>

                                <div>
                                    @error('subcategory')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                    @error('category_id')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <button type="submit" class="btn btn-sm btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>