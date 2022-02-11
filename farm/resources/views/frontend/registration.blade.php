@extends('layouts.master_home')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h2 class="text-center p-5">Login/Registration Page</h2>
        </div>
    </div>
</div>
<div class="container">
    <div class="row pt-5">
        <div class="col-lg-6">
            <form method="POST" action="">
                @csrf
                <div class="mb-3">
                    <input type="email" class="form-control" name="user_email" placeholder="Your Email" required>
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" name="user_pass" placeholder="Your Password" required>
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-danger btn-sm">Login</button>
                </div>
            </form>
        </div>
        <div class="col-lg-6">

            @if(session('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>{{ session('success') }}</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            @endif
            
            @if(session('warn'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>{{ session('warn') }}</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            @endif


            <form method="POST" action="{{ route('register.store') }}">
                @csrf
                <div class="mb-3">
                    <input type="text" class="form-control" name="user_name" placeholder="Full Name" required>
                </div>
                <div class="mb-3">
                    <input type="email" class="form-control" name="user_email" placeholder="Your Email" required>
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="user_phone" placeholder="Phone Number" required>
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" name="user_pass" placeholder="Password" required>
                </div>
                <div class="md-3">
                    <select name="user_location" class="form-select mt-2 mb-2" aria-label="Default select example" required>
                        <option selected readonly value="">Your Location</option>
                        <option value="ctg">CTG</option>
                        <option value="dhk">DHK</option>
                        <option value="kulna">Kulna</option>
                    </select>
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-danger btn-sm">Register</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection