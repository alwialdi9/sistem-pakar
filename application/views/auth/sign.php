<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://kit.fontawesome.com/6d2ea823d0.js"></script>

    <title><?= $title ?></title>

    
    <link rel="stylesheet" href="<?= base_url('assets/css/sign.css') ?>">
</head>
<body>
    <div class="container">
        <div class="forms-container">
          <div class="signin-signup">
            <form method="POST" action="" class="sign-in-form">
                
                <h2 class="title">Sistem Pakar Minat Bakat</h2>
              <div class="input-field">
                <i class="fas fa-user"></i>
                <input type="email" name="email" value="" required autofocus placeholder="Email">
              </div>
              <div class="input-field">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" required placeholder="Password">
              </div>
              <button type="submit" class="btn solid">Login</button>
              <p class="social-text">Or Sign in with social platforms</p>
              <div class="social-media">
                <a href="" class="social-icon">
                  <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="social-icon">
                  <i class="fab fa-google"></i>
                </a>
              </div>
            </form>
            
            <!-- <form method="POST" action="" class="sign-up-form">
            
              <h2 class="title">SIPA - Sign up</h2>
              <div class="input-field">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Name" name="nama" autofocus autocomplete="off" value="{{ old('nama') }}">
                @error('nama')
                    <div class="invalid-feedback mt-2 ml-3">{{ $message }}</div>
                @enderror
              </div>
              <div class="input-field">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="Email" name="email" value="{{ old('email') }}" aria-describedby="emailHelpBlock">
                          @error('email')
                                <div class="invalid-feedback mt-2 ml-3">{{ $message }}</div>
                            @enderror
              </div>

              <div class="input-field">
                <i class="fas fa-user"></i>
                <input type="text" id="number" placeholder="Phone Number" name="nomor_hp" value="{{ old('nomor_hp') }}"  onkeypress="return hanyaAngka(event)">
                                @error('nomor_hp')
                                <div class="invalid-feedback mt-2 ml-3">{{ $message }}</div>
                            @enderror
              </div>

              <div class="input-field">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Password" name="password">

                          @error('password')
                                <div class="invalid-feedback mt-2 ml-3">{{ $message }}</div>
                            @enderror
              </div>
              <button type="submit" class="btn">Sign Up</button>
              <p class="social-text">Or Sign up with social platforms</p>
              <div class="social-media">
                <a href="{{ url('auth/facebook') }}" class="social-icon">
                  <i class="fab fa-facebook-f"></i>
                </a>
                <a href="{{ url('auth/google') }}" class="social-icon">
                  <i class="fab fa-google"></i>
                </a>
              </div>
            </form> -->
          </div>
        </div>
  
        <div class="panels-container">
          <div class="panel left-panel">
            <div class="content">
              <!-- <h3>New here ?</h3> -->
              <p style="font-style:italic">
              " Everybody is a genius. But if you judge a fish by its ability to climb a tree, it will live its whole life believing that it is stupid "
              </p>
              <h3 style="margin-bottom: 5%"> - Albert Einstein</h3>
              <button class="btn transparent" id="sign-up-btn">
                Sign up
              </button>
            </div>
            <img src="<?= base_url('assets/img/undraw_children_4rtb.svg')?>" class="image" alt="" />
          </div>
          <div class="panel right-panel">
            <div class="content">
              <h3>Only for Admins</h3>
              <p>
                You can Go to our website to find out children's intelligence.
              </p>
              <button class="btn transparent" id="sign-in-btn">
               Sign In
              </button>

              <a href="<?= base_url('user')?>">
              <button class="btn transparent">
               Back to Home
              </button></a>
            </div>
            <img src="<?= base_url('assets/img/undraw_children_4rtb.svg')?>" class="image" alt="" />
          </div>
        </div>
      </div>
  
      <script src="<?= base_url('assets/js/sign.js') ?>"></script>
      
</body>
</html>