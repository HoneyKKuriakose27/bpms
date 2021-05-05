<?php session_start();
  include '../connection.php';
  include 'adminheader.php';

  $catkey=$_GET['t'];
  $sql = "select * from tb_servicesubcat where scatkey='".$catkey."'";
  $result = mysqli_query($conn,$sql);
  
?>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Add New Service</h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">

                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Service Details</h6>
                        </div>
                        <div class="card-body" >
<?php
while ($row=mysqli_fetch_array($result))
  {
    ?>
                          <form role="form" action="updateservicereg.php" method="post" enctype="multipart/form-data" name="myform">

              			    			<div class="form-group">
              			    				<input type="text" name="cname"  class="form-control input-sm" placeholder="Service Name" value="<?php echo $row['scatname'];?>">
              			    			</div>
              			    			<div class="form-group">
              			    				<textarea rows="2" name="desc" class="form-control input-sm" placeholder="Description"><?php echo $row['scatdesc'];?></textarea>
              			    			</div>
        
<input type="hidden" name="scatkey" value="<?php echo $catkey ?>">
<input type="hidden" name="image" value="<?php echo $row['image'];?>">
            

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
      <input type="text" name="amt"  class="form-control input-sm" placeholder="Price" value="<?php echo $row['amt'];?>">
    </div>
  </div>
</div>


                              
              			    		
  			    		             	<input type="submit" value="Update Service" class="btn btn-info btn-block" >
<?php } ?>
              			    		</form>




                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
<?php include 'adminfooter.php'; ?>
