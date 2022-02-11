@extends('layouts.master_home')


@section('content')

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="p-3">
                <h3 class="text-center">Agro</h3>
            </div>
        </div>
    </div>
</div>
<br><br>
<!-- Paragraph start -->
<div class="container-fluid p-3">
    <div class="row">

        @foreach($agroDetails as $agroDetail)
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="card m-1">
                <img src="{{ asset('frontend/assets/images/products/cow_1.jpg') }}" class="card-img-top" alt="{{ $agroDetail->product_img_1 }}" height="350px">
                <div class="card-body">
                    <h5 class="card-title" style="height: 50px;">{{ $agroDetail->product_name }} - {{ $agroDetail->product_id }}</h5>
                    <p class="card-text"><strong>Location</strong> - {{ $agroDetail->location }}</p>
                    <p class="card-text"><strong>Price</strong> - {{ $agroDetail->sale_price }} TK</p>
                    <p class="card-text">
                    <div class="row">
                        <div class="col-lg-12">
                            <strong>Age</strong> - {{ $agroDetail->product_age }} year/years
                        </div>
                        <!-- <div class="col-lg-7">
                            <strong>Milk Per Day</strong> - {{ $agroDetail->milk_per_day }}
                        </div> -->
                    </div>
                    </p>
                    <hr>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <a href="./product-details.html" class="btn btn-sm btn-danger">Details</a>
                        <button class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Send Enquiry</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Content Us</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email Address" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" id="exampleInputText" placeholder="Full Name" aria-describedby="textHelp">
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" id="exampleInputText" placeholder="Phone" aria-describedby="textHelp">
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" id="exampleInputText" placeholder="Your Location" aria-describedby="textHelp">
                            </div>
                            <div class="mb-3">
                                <textarea type="text" class="form-control" id="exampleInputText" aria-describedby="textHelp" placeholder="Your Message"></textarea>
                            </div>

                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Pls check if you ant to talk </label>
                            </div>




                            <button type="submit" class="btn btn-sm btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        @endforeach

    </div>
</div>
<hr>
<!-- Paragraph start -->

@endsection