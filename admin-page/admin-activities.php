<?php
    include_once 'admin-header.php';
    include_once '../includes/connect.inc.php';
?>


<div class="main">
    <div class="container-fluid mb-5" style="background-color: #3f7652">     
        <h1 class="display-4 fw-bold p-3 text-center text-white">BARANGAY ACTIVITIES</h1>
    </div>

    <div class="container mb-4">
        <button type="button" class="btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#exampleModal">New Activities</button>
    </div>
    
    <div class="container p-5 border rounded-3">
        <table id="example" class="table table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Activity Name</th>
                        <th>Activity Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>61</td>
                    </tr>
                    <tr>
                        <td>Garrett Winters</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>63</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                    </tr>
                </tbody>
        </table>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">New Activity</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="" method="post">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Activity Name:</label>
                            <input type="text" class="form-control" name="official_name" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Activity Description:</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="8"></textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="customFile">Image:</label>
                            <input type="file" class="form-control" name="official_image" />
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<?php
    include_once "../scripts.php";
?>