<?php session_start();
  include '../connection.php';
  include 'adminheader.php';

  $catkey=$_GET['t'];
  $sql = "select * from tb_servicecat where catkey='".$catkey."'";
  $result = mysqli_query($conn,$sql);
  while ($row=mysqli_fetch_array($result))
  {
    $catid=$row['catid'];
  }

  $sql = "select * from tb_servicesubcat inner join tb_servicecat on tb_servicesubcat.catid=tb_servicecat.catid where tb_servicesubcat.delstatus!='1' and tb_servicesubcat.catid='".$catid."'";
  $result = mysqli_query($conn,$sql);

?>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Service Details</h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Availble Services</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Category</th>
                                            <th>Sub Category</th>
                                            <th>Description</th>
                                            <th>image</th>
                                            <th>Price</th>
                                            <th>Links</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
					                                <th>#</th>
                                            <th>Category</th>
                                            <th>Sub Category</th>
                                            <th>Description</th>
                                            <th>image</th>
                                            <th>Price</th>
                                            <th>Links</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                      <?php $count=1; while ($row=mysqli_fetch_array($result))
                      {  ?>
                                        <tr>
					                                  <td><?php echo $count++; ?></td>
                                            <td><?php echo $row['catname']; ?></td>
                                            <td><?php echo $row['scatname']; ?></td>
                                            <td><?php echo $row['scatdesc']; ?></td>
                                            <td><img src="Uploads/<?php echo $row['scatkey']."/".$row['image']; ?>" height="250px" width="250px"></td>
                                            <td><?php echo $row['amt']." INR"; ?></td>
                                            <td><?php $status = $row['scatstatus'];
                                            if($status==0)
                                            { ?>
                                               <font color="red"><b>Not Available</b></font>&nbsp;&nbsp;<a href="showservicesubcategory.php?t=<?php echo $row['scatkey']; ?>"><button class="btn btn-outline-success">Show</button></a>
                                               <a href="deleteservicesubcategory.php?t=<?php echo $row['scatkey']; ?>"><button class="btn btn-outline-danger"><i class="far fa-trash-alt"></i></button></a>&nbsp;&nbsp;<a href="updateservicesubcategory.php?t=<?php echo $row['scatkey']; ?>"><button class="btn btn-outline-info">Update</button></a>
                                 <?php      }
                                            else
                                            {   ?>
                                               <font color="green"><b>Available</b></font>&nbsp;&nbsp;<a href="hideservicesubcategory.php?t=<?php echo $row['scatkey']; ?>"><button class="btn btn-outline-danger">Hide</button></a>
                                               <a href="deleteservicesubcategory.php?t=<?php echo $row['scatkey']; ?>"><button class="btn btn-outline-danger"><i class="far fa-trash-alt"></i></button></a>&nbsp;&nbsp;<a href="updateservicesubcategory.php?t=<?php echo $row['scatkey']; ?>"><button class="btn btn-outline-info">Update</button></a>
                                 <?php      }    ?>


                                          </td>
                                        </tr>
                      <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            <?php include 'adminfooter.php'; ?>