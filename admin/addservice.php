<?php 
session_start();
include 'adminheader.php'; ?>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Add New Service</h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">

                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Service Category Details</h6>
                        </div>
                        <div class="card-body" >


                          <form role="form" action="servicecat.php" method="post" enctype="multipart/form-data" name="myform">

              			    			<div class="form-group">
              			    				<input type="text" name="cname"  class="form-control input-sm" placeholder="Service Category Name">
              			    			</div>
              			    			<div class="form-group">
              			    				<textarea rows="2" name="desc" class="form-control input-sm" placeholder="Description"></textarea>
              			    			</div>
              			    		
  			    		             	<input type="submit" value="Add Category" class="btn btn-info btn-block" >

              			    		</form>




                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
<?php include 'adminfooter.php'; ?>
