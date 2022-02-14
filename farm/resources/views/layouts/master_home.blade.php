<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600&display=swap" rel="stylesheet">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="{{ asset('frontend/assets/css/custom.css') }}">

  <title>Home - Farm</title>
</head>

<body>
  <!-- Navbar start -->
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark"">
                    <div class=" container-fluid">
          <a class="navbar-brand" href="#">Navbar</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link active" aria-current="page" href="{{ route('/') }}">Home</a>
              <a class="nav-link" href="{{ route('about') }}">About us</a>
              <a class="nav-link" href="{{ route('agro') }}">Agro</a>
              <a class="nav-link" href="{{ route('dairy') }}">Dairy</a>
              <a class="nav-link" href="{{ route('dairyProduct') }}">Dairy Product</a>
              <a class="nav-link" href="{{ route('contact') }}">Contact us</a>


              @if(session()->has('user_id'))
              <a class="nav-link" href="{{ route('cart') }}">Cart</a>
              <a class="nav-link" href="{{ route('logout') }}">Logout</a>
              @else
              <a class="nav-link" href="{{ route('registration') }}">Registration/Login</a>
              @endif


            </div>
          </div>
      </div>
      </nav>
    </div>
  </div>
  </div>
  <!-- Navbar start -->


  @yield('content')

  <div class="container-fluid">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3689.8570476020873!2d91.8229467142696!3d22.359025946412324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd91c97fb2bc5%3A0xac991a4f97e0ee7b!2sSIMCO%20MART!5e0!3m2!1sen!2sbd!4v1644585413474!5m2!1sen!2sbd" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
  </div>

  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  <script src="{{ asset('frontend/assets/js/custom.js') }}"></script>
</body>

</html>