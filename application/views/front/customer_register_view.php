 <?php
    $this->load->view('front/header');
?>

        <!-- *** LOGIN MODAL ***
_________________________________________________________ -->

        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Customer login</h4>
                    </div>
                    <div class="modal-body">
                        <form action="customer-orders.html" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="email_modal" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password_modal" placeholder="password">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-template-main"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>

                        </form>

                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted"><a href="customer-register.html"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                    </div>
                </div>
            </div>
        </div>

        <!-- *** LOGIN MODAL END *** -->

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>New account / Sign in</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>New account / Sign in</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">
                    <div class="col-md-6">
                        <div class="box">
                            <h2 class="text-uppercase">New account</h2>

                            <p class="lead">Not our registered customer yet?</p>
                            <p>Register as either a customer or a retailer. By registering with us you can buy latest books in a minute!</p>
                            <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a></p>

                            <hr>

                            <form  id="register"  onsubmit="return validForm()"  action="<?=site_url('front/customer_controller/customer_register')?>" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="name-login">Name</label>
                                    <input type="text" class="form-control" name="fullname" id="fullname" required>
                                    </div> 
                                    <div class="form-group">
                                    <label for="name-login">Address</label>
                                    <input type="text" class="form-control" name="address" id="address" required>
                                    </div> 
                                    <div class="form-group">
                                    <label for="name-login">Phone:</label>
                                    <input type="number" class="form-control" name="phone" id="phone" required>
                                    </div> 
                                    <div class="form-group">
                                    <label for="name-login">Image:</label>
                                    <input type="file" class="form-control" name="image" id="image" required>
                                </div> 
                                    <label for="name-login">UserName:</label>
                                    <input type="text" class="form-control" name="username" id="username" required>
                                    <div class="form-group">
                                    <label for="name-login">Password:</label>
                                    <input type="password" class="form-control" name="password" id="password" required>
                                </div> 

                                <div class="form-group">
                                    <label for="password">Confirm Password</label>
                                    <input type="password" class="form-control" name="passconf" id="confirm_password" required>
                                </div>
                               <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" name="email" id="email" required>
                                </div>
                                <!--   <div class="form-group">
                        <div class="g-recaptcha" data-sitekey="6LeHBWMUAAAAAI6E4vNdle8MRIZC80FynBElI61n"></div>
                    </div> -->
                                    <input type="hidden" name="resetpassword" id="resetpassword" value="0">
                                     <div class="form-group">
                        <div id="example1" ></div>
                    </div>
                                <div class="text-center">
                                    <button type="submit" id="testbtn" class="btn btn-template-main" name='add' value="ADD CATEGORY"><i class="fa fa-user-md"></i> Register</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="box">
                            <h2 class="text-uppercase">Login</h2>

                            <p class="lead">Already our customer?</p>
                            <p class="text-muted">Please login.</p>

                            <hr>

<?php if($this->session->userdata('invalid_user') != NULL && $this->session->userdata('invalid_user') === TRUE) { ?>
                <div class="alert alert-danger">
                    Invalid Username or Password.
                </div>
            <?php } ?>
                            <form action="<?=site_url('front/customer_controller/validate_user')?>" method="post">
                                <div class="form-group">
                                    <label for="email">Username</label>
                                    <input type="text" class="form-control" name="username" id="username">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password" id="password">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-sign-in"></i> Log in</button>
                                    <input type="hidden" name="login" value="LOGIN">
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** GET IT ***
_________________________________________________________ -->


        <!-- *** GET IT END *** -->


        <!-- *** FOOTER ***
_________________________________________________________ -->

        
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->

        <!-- *** COPYRIGHT ***
_________________________________________________________ -->

    <?php
    $this->load->view('front/footer.php');
    ?>



<script type="text/javascript">
    
     function validForm(){
        const pass = $('#password').val();
        const confirm_password = $('#confirm_password').val();
        if(pass != confirm_password)
        {
            alert('confirm password must be same');
            return false;
        }
        if(grecaptcha.getResponse(widgetId1))
        {
            //alert('valid');s
           return true;
        }
        else
        {
            alert('Invalid Captcha');
            return false;
        }
    }
     
      var onloadCallback = function() {
        widgetId1 = grecaptcha.render('example1', {
          'sitekey' : '6LeHBWMUAAAAAI6E4vNdle8MRIZC80FynBElI61n',
          'theme' : 'light',
          // 'callback' : verifyCallback,
        });
      };
    </script>   

<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>

</body>

</html>