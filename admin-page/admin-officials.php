<?php
    include_once 'admin-header.php';
    include_once '../includes/connect.inc.php';
?>


<div class="main">
    <div class="container-fluid mb-5" style="background-color: #3f7652">     
        <h1 class="display-4 fw-bold p-3 text-center text-white">BARANGAY OFFICIALS</h1>
    </div>

    <div class="container mb-4">
        <button type="button" class="btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#exampleModal">New Official</button>
    </div>
    
    <div class="container p-5 border rounded-3">
        <table id="example" class="table table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Official Name</th>
                        <th>Official Type</th>
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
                    <h5 class="modal-title" id="exampleModalLabel">New Official</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="" method="post">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Official Name:</label>
                            <input type="text" class="form-control" name="official_name" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Official Position:</label>
                            <input type="text" class="form-control" name="official_position" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="customFile">Image:</label>
                            <input type="file" class="form-control" name="official_image" />
                        </div>
                        <div class="mb-5">
                            <label class="form-label" for="customFile">Official Type:</label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Open this select menu</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
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