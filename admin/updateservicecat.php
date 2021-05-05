<?php 
session_start();
include '../connection.php';
  include 'adminheader.php';

  $sql = "select * from tb_servicecat where catkey='".$_GET['t']."'"; //echo $sql;exit;
  $result = mysqli_query($conn,$sql); ?>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Update Service</h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">

                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Service Category Details</h6>
                        </div>
                        <div class="card-body" >


                          <form role="form" action="updateservicecategoryreg.php" method="post" enctype="multipart/form-data" name="myform">
<?php while ($row=mysqli_fetch_array($result))
                      {  ?>
                              <div class="form-group">
                                <input type="text" name="cname"  class="form-control input-sm" placeholder="Service Category Name" value="<?php echo $row['catname'] ?>">
                              </div>
                              <div class="form-group">
                                <textarea rows="2" name="desc" class="form-control input-sm" placeholder="Description"><?php echo $row['catdesc']; ?></textarea>
                                <input type="hidden" name="catkey" value="<?php echo $row['catkey']; ?>">
                              </div>
                            
                              <input type="submit" value="Update Category" class="btn btn-info btn-block" >
<?php } ?>
                            </form>




                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
<?php include 'adminfooter.php'; ?>
