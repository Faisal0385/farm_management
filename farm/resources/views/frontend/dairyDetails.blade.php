@extends('layouts.master_home')


@section('content')

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h2 class="text-center p-5">Dairy Details</h2>
        </div>
    </div>
</div>
<br><br>
<!-- Paragraph start -->
<div class="container">
    <div class="row pt-5 pb-5">
        <div class="col-lg-7">
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="{{ ($dairyDetails->product_img_1) ? asset($dairyDetails->product_img_1) : asset($dairyDetails->default_img) }}" class="d-block w-100" height="400px" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="{{ ($dairyDetails->product_img_2) ? asset($dairyDetails->product_img_2) : asset($dairyDetails->default_img)  }}" class="d-block w-100" height="400px" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="{{ ($dairyDetails->product_img_3) ? asset($dairyDetails->product_img_3) : asset($dairyDetails->default_img)  }}" class="d-block w-100" height="400px" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="{{ ($dairyDetails->product_img_4) ? asset($dairyDetails->product_img_4) : asset($dairyDetails->default_img)  }}" class="d-block w-100" height="400px" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="row">
                <div class="col-lg-12">
                    <h2>{{ $dairyDetails->product_name }} - {{ $dairyDetails->product_id }}</h2>
                    <button class="btn btn-danger btn-sm">Enquiry</button>
                </div>
                <div class="col-lg-12 pt-3 pb-3">
                    <!-- <p><strong>Description:</strong> {{ $dairyDetails->product_detail_short }} </p> -->
                    <!-- <p><strong>Breed Name:</strong> {{ $dairyDetails->product_breed }}</p> -->
                    <p><strong>Price:</strong> {{ $dairyDetails->sale_price }} TK</p>
                    <p><strong>Age:</strong> {{ $dairyDetails->product_age }} year(s)</p>
                    <p><strong>Milk Per Day:</strong> {{ $dairyDetails->milk_per_day }} L</p>
                    <!-- <p><strong>Details:</strong> {{ $dairyDetails->product_detail_long }} </p> -->
                </div>
                <div class="col-lg-12">
                    <p><strong>Location: </strong> {{ $dairyDetails->location }}</p>
                    <!-- <p><strong>Social Media: </strong></p>-->
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Cow Videos
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <div class="row">
                                <div class="col-lg-4">
                                    <iframe width="100%" height="315" src="https://www.youtube.com/embed/bCrz03-OJtY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                                <div class="col-lg-4">
                                    <iframe width="100%" height="315" src="https://www.youtube.com/embed/moE9DuXELww" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                                <div class="col-lg-4">
                                    <iframe width="100%" height="315" src="https://www.youtube.com/embed/moE9DuXELww" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<hr>
<!-- Paragraph start -->

@endsection