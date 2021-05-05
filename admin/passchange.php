<?php include 'adminheader.php'; ?>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Update Password</h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">

                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Password Change</h6>
                        </div>
                        <div class="card-body" >


                          <form role="form" action="passwordupdate.php" method="post" enctype="multipart/form-data" name="myform">
              			    			

              			    			<div class="form-group">
              			    				<input type="Password" name="curpass"  class="form-control input-sm" placeholder="Current Password">
              			    			</div>

                              <div class="form-group">
                                <input type="Password" name="pass"  class="form-control input-sm" placeholder="New Password">
                              </div>

                              <div class="form-group">
                                <input type="Password" name="conpass"  class="form-control input-sm" placeholder="Confirm Password">
                              </div>
              			    			
  			    			<input type="submit" value="Update" class="btn btn-info btn-block" onclick="return checkEng()">

              			    		</form>




                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
<?php include 'adminfooter.php'; ?>
