<!DOCTYPE html>
<html lang="en">
<head>
    <!--
        ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0
        http://www.apache.org/licenses/LICENSE-2.0

        http://usman.it
        http://twitter.com/halalit_usman
        ===
    -->
    <meta charset="utf-8">
    <title>BookStore</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link id="bs-css" href="<?=site_url('css/bootstrap-cerulean.min.css');?>" rel="stylesheet">

    <link href="<?=site_url('css/charisma-app.css');?>" rel="stylesheet">
    
    

    <!-- jQuery -->
    <script src="<?=site_url('bower_components/jquery/jquery.min.js');?>"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="img/favicon.ico">

</head>

<body>
    <!-- topbar starts -->
 <?php   
$this->load->view('admin/common/header');
$this->load->view('admin/common/sidebar');

?>
        <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
          <!--   <div>
    <ul class="breadcrumb"> -->
        <!-- <li>
            <a href="http://localhost/interface-bookstore/admin/dashboard/">Home</a>
        </li>
        <li>
            <a href="http://localhost/interface-bookstore/admin/ourteam_controller/editourteam/">Update ourteam</a>
        </li> -->
    <!-- </ul>
</div>
 -->


<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Update Ourteam</h2>

                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                            class="glyphicon glyphicon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form role="form" action="<?=site_url('admin/ourteam_controller/updateourteam')?>" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Name:</label>
                        <input type="text" class="form-control" name="name" id="name"  value="<?php echo $records->name;?>" required>
                    </div>
                     <div class="form-group">

                        <label for="exampleInputEmail1">Description:</label>
                        <input type="text" class="form-control" name="description" id="description"  value="<?php echo $records->description;?>" required>
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputEmail1">Image:</label>
                        <input type="file" class="form-control" name="image" id="image" value="<?php echo $records->image;?>" required>
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <input type="text" class="form-control" name="email" id="email"  value="<?php echo $records->email;?>" required>
                    </div>
                    <div class="form-group">
                        <label>Facebook:</label>
                        <input type="text" class="form-control" name="facebook" id="facebook"  value="<?php echo $records->facebook;?>" required>
                    </div>
                    <input type="hidden" name="id" value="<?php echo $records->id;?>">
                    <button type="submit" name='update' value="UPDATE" class="btn btn-primary">UPDATE</button>&nbsp;
                    <button type="clear" class="btn btn-default">CLEAR</button>
                </form>

            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
    </div><!--/#content.col-md-0-->
</div><!--/fluid-row-->

    <!-- Ad, you can remove it -->
    

            <!--End mc_embed_signup-->
        </div>

    </div>
    <!-- Ad ends -->

    <hr>

   

      

    <footer class="row">
        <?php
  $this->load->view('admin/common/footer');
  ?>
        
    </footer>

</div><!--/.fluid-container-->

<!-- external javascript -->

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->


<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>


</body>
</html>

