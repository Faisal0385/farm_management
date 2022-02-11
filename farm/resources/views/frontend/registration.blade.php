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
            <form>
                <div class="mb-3">
                    <input type="email" class="form-control" id="" placeholder="Your Email">
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" id="" placeholder="Your Password">
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-danger btn-sm">Login</button>
                </div>
            </form>
        </div>
        <div class="col-lg-6">
            <form>
                <div class="mb-3">
                    <input type="text" class="form-control" id="" placeholder="User Name">
                </div>
                <div class="mb-3">
                    <input type="email" class="form-control" id="" placeholder="Your Email">
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" id="" placeholder="Full Name">
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" id="" placeholder="Phone Number">
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" id="" placeholder="Password">
                </div>
                <div class="md-3">
                    <select class="form-select mt-2 mb-2" aria-label="Default select example">
                        <option selected>Your Location</option>
                        <option value="ctg">CTG</option>
                        <option value="dhk">DHK</option>
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