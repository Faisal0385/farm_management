@extends('layouts.master_home')


@section('content')

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="p-3">
                <h3 class="text-center">Dairy Products</h3>
            </div>
        </div>
    </div>
</div>
<br><br>
<!-- Paragraph start -->
<div class="container-fluid p-3">
    <div class="row">

        @foreach($productDetails as $productDetail)
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="card m-1">
                <img src="{{ ($productDetail->product_img_1) ? asset($productDetail->product_img_1) : asset($productDetail->default_img) }}" class="card-img-top" alt="{{ $productDetail->product_img_1 }}" height="200px">
                <div class="card-body">
                    <h5 class="card-title" style="height: 50px;">{{ $productDetail->product_name }} - {{ $productDetail->product_id }}</h5>
                    <p class="card-text"><strong>Price</strong> - {{ $productDetail->sale_price }} TK</p>
                    <p class="card-text"><strong>Discount Price</strong> - {{ $productDetail->sale_price }} TK</p>
                    <hr>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <a href="{{ route('product.details', ['id' => $productDetail->id ])}}" class="btn btn-sm btn-danger">Details</a>
                        <button class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Add To Cart</button>
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