<?php 
session_start();
$catkey=$_GET['t'];
include 'adminheader.php'; ?>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Add New Products</h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">

                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Product Category Details</h6>
                        </div>
                        <div class="card-body" >


                          <form role="form" action="subcategoryreg.php" method="post" enctype="multipart/form-data" name="myform">

              			    			<div class="form-group">
              			    				<input type="text" name="cname"  class="form-control input-sm" placeholder="Sub Category Name">
              			    			</div>
              			    			<div class="form-group">
              			    				<textarea rows="2" name="desc" class="form-control input-sm" placeholder="Description"></textarea>
              			    			</div>
        
<input type="hidden" name="catid" value="<?php echo $catkey ?>">
            <div class="row">
              <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                  <input type="text" name="mfg" class="form-control input-sm" placeholder="Mfg. Date" onfocus="(this.type='date')">
                </div>
              </div>
              <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                  <input type="text" name="exp"  class="form-control input-sm" placeholder="Exp. Date" onfocus="(this.type='date')">
                </div>
              </div>
            </div>

<div class="row">
  <div class="col-xs-6 col-sm-6 col-md-6">
    <div class="form-group">
      <span><b>Image</b></span>
              <input type="file" name="aadharfile"  class="form-control input-sm" >
    </div>
  </div>
  <div class="col-xs-6 col-sm-6 col-md-6">
    <div class="form-group">
      <span><b style="color: white">.</b></span>
      <input type="text" name="amt"  class="form-control input-sm" placeholder="Price" >
    </div>
  </div>
</div>


                              
              			    		
  			    		             	<input type="submit" value="Add Sub Category" class="btn btn-info btn-block" >

              			    		</form>




                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
<?php include 'adminfooter.php'; ?>
