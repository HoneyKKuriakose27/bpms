<?php session_start();
  include '../connection.php';
  include 'customerheader.php';

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
                                            <td><img src="../admin/Uploads/<?php echo $row['scatkey']."/".$row['image']; ?>" height="250px" width="250px"></td>
                                            <td><?php echo $row['amt']." INR"; ?></td>
                                            <td>
                                               <button class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModalCenter<?php echo $row['scatid'] ?>">Book</button>
                                                                      </td>
                                        </tr>
                      <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>

                <?php
$sql="select * from tb_servicesubcat inner join tb_servicecat on tb_servicesubcat.catid=tb_servicecat.catid where tb_servicesubcat.delstatus!='1' and tb_servicesubcat.catid='".$catid."'";//echo $sql;exit;
$ret=mysqli_query($conn,$sql);
while ($row=mysqli_fetch_array($ret)) {

?>
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter<?php echo $row['scatid'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Appointment Registration</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body"><form action="appointmentreg.php" method="post">
         <input type="text" class="form-control" id="fname" name="fname" placeholder="Full Name" value="" required="true"> <br>
         <input type="email" class="form-control" id="email" name="email" placeholder="Email ID" value="" required="true"> <br>
         <textarea placeholder="Enter your Address here...." name="address" class="form-control"></textarea><br><label for="exampleInputEmail1">Appointment Date</label>
         <input type="date" class="form-control" id="apdate" name="apdate" value="" required="true">
         <br>
         <select class="form-control" name="slot">
          <option value="null">Select Time Slot</option>
          <option value="9am - 10am">9am - 10am</option>
          <option value="10am - 11am">10am - 11am</option>
          <option value="11am - 12pm">11am - 12pm</option>
          <option value="1pm - 2pm">1pm - 2pm</option> 
         </select><br>
         <input type="phone" class="form-control" id="apdate" name="phone" placeholder="Phone Number" value="" required="true">
         <br>
         <input type="hidden" name="userid" value="<?php echo $_COOKIE["lkey"]; ?>">
         <input type="hidden" name="catid" value="<?php echo $row['catid'] ?>">
         <input type="hidden" name="subcatid" value="<?php echo $row['scatid']; ?>">
         <input type="hidden" name="amount" value="<?php echo $row['amt']; ?>">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Book</button>
      </div></form>
    </div>
  </div>
</div>
<?php } ?>
                <!-- /.container-fluid -->

            <?php include 'customerfooter.php'; ?>
