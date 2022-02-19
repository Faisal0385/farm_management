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
    
    @endforeach
  </div>
</div>


@endsection