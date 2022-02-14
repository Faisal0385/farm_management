@extends('layouts.master_home')

@section('content')
<div class="container-fluid p-4">
  <div class="row d-flex justify-content-center">
    <div class="col-lg-6">
      @if(session('success'))
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>{{ session('success') }}</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      @endif
    </div>
  </div>
  <div class="row">

    @foreach($allCarts as $allCart)
    <div class="col-lg-12 pt-4">
      <div class="accordion" id="accordionExample">
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingOne">
            <div class="accordion-button">
              <h5>{{ $allCart->product_name }}</h5>
            </div>
          </h2>
          <div id="" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              <form action="{{ route('cart.store') }}" method="POST">
                @csrf
                <input type="hidden" name="product_id" value="{{ $allCart->product_id }}">
                <input type="hidden" name="user_id" value="{{ $allCart->user_id }}">
                <input type="hidden" name="product_price" value="{{ $allCart->product_price }}">
                <div class="row">
                  <div class="col-lg-2">
                    <img src="{{ asset($allCart->product_image) }}" alt="" height="100px" width="100px">
                  </div>
                  <div class="col-lg-2">
                    <h5>Price: <span id="sale_price">{{ $allCart->product_price }}</span> TK</h5>
                  </div>
                  <div class="col-lg-1">
                    {{ $allCart->product_size }}
                    <!-- @php
                  if($allCart->product_size == 'NA'){
                  @endphp
                  <option name="NA">Size: NA</option>
                  @php }else{ @endphp
                  <select name="product_size" class="form-select form-select-sm">
                    <option selected>Choose Size</option>
                    @php
                    $sizes = explode(",",$allCart->product_size);
                    foreach($sizes as $size){
                    @endphp
                    <option id="{{$size}}">{{$size}}</option>
                    @php } @endphp
                  </select>
                  @php } @endphp -->
                  </div>

                  <div class="col-lg-1">
                    {{ $allCart->product_weight }}

                    <!-- @php
                  if($allCart->product_weight == 'NA'){
                  @endphp
                  <option name="NA">Weight: NA</option>
                  @php }else{ @endphp
                  <select name="product_weight" class="form-select form-select-sm">
                    <option selected>Choose Weight</option>
                    @php
                    $weights = explode(",",$allCart->product_weight);
                    foreach($weights as $weight){
                    @endphp
                    <option id="{{$weight}}">{{$weight}}</option>
                    @php } @endphp
                  </select>
                  @php } @endphp -->
                  </div>
                  <div class="col-lg-2">
                    <div class="input-group input-group-sm mb-3">
                      <span class="input-group-text">Qty</span>
                      <input type="number" name="qty" id="qty" value="{{ $allCart->product_qty }}" class="form-control" min="1" value="1">
                    </div>
                  </div>
                  <div class="col-lg-2">
                    <h5>Total: <span id="total_price">{{ $allCart->product_qty * $allCart->product_price }}</span> TK</h4>
                  </div>
                  <div class="col-lg-2">
                    <button type="submit" class="btn btn-sm btn-warning">Update</button>
                    <a href="{{ route('cart.delete',['id' => $allCart->id]) }}" class="btn btn-sm btn-danger">Delete</a>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    @endforeach
    <div class="col-lg-12">
      <h4 class="d-flex justify-content-end pt-5">Total: {{ $final_price }} TK</h5>
    </div>
  </div>
</div>

<div class="row d-flex justify-content-end">
  <div class="col-lg-6 p-4">
    <form>
      <div class="row mb-3">
        <div class="col">
          <input type="text" class="form-control" placeholder="First name" required>
        </div>
        <div class="col">
          <input type="text" class="form-control" placeholder="Last name" required>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col">
          <input type="email" class="form-control" placeholder="Email Address" required>
        </div>
        <div class="col">
          <input type="text" class="form-control" placeholder="Phone Number" required>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col">
          <input type="text" class="form-control" placeholder="Address 1" required>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col">
          <input type="text" class="form-control" placeholder="Address 2">
        </div>
      </div>
      <div class="row mb-3">
        <div class="col">
          <select class="form-select" aria-label="Default select example" required>
            <option selected>Choose City</option>
            <option value="DHK">DHK</option>
            <option value="CTG">CTG</option>
            <option value="KULNA">KULNA</option>
          </select>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col">
          <select class="form-select" aria-label="Default select example" required>
            <option selected>Choose Payment Method</option>
            <option value="COD">COD</option>
            <option value="bkash">bkash</option>
          </select>
        </div>
      </div>
      <button type="submit" class="btn btn-sm btn-primary">Submit</button>
    </form>
  </div>
</div>


<script>
  // function valueChange() {
  //   var qty = document.getElementById('qty').value;
  //   var sale_price = document.getElementById('sale_price').innerHTML;
  //   var total = qty * sale_price;

  //   document.getElementById('total_price').innerHTML = total;
  //   console.log(total);

  // }
</script>


@endsection