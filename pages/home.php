<div class="container-fluid mt-5">
    <div class="row">
        <div class="col-12">
        <div class="card bg-light mb-4">
                <div class="card-body" style="background-color: #3a7ca5 !important; border-radius: .5rem !important;">
                    <div class="col-md-6">
                        <h2 style="color: #ffffff;">Welcome <?= ucwords($_SESSION['username']);?></h2>
                        <p class="m-auto text-secondary" style="color: #81c3d7 !important;"><?= ucwords($_SESSION['role']);?></p>
                    </div>
                    <div class="col-md-6">
                        
                    </div>
                </div>
        </div>
        </div>
    </div>
    <div class="row">
    <?php if(isset($_SESSION['role']) && $_SESSION['role'] == 'admin'): ?>
        <div class="col-lg-4 col-md-6 col-xl-3 mb-4">
            <div  class="card bg-warning text-dark text-center">
                <div class="card-body" style="background-color: #d9dcd6; border-radius: .5rem;">
                    <h3 class="card-title">Total Users</h3>
                    <h2 class="card-text ">
                    <?php countUsers($conn); ?>
                    </h2>
                    <hr>
                    <p class="m-0 text-center"><a href="?page=accounts" class="text-dark">View Details</a></p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-xl-3 mb-4">
            <div class="card bg-secondary text-dark text-center">
                <div class="card-body" style="background-color: #81c3d7; border-radius: .5rem;">
                    <h3 class="card-title">Total Books</h3>
                    <h2 class="card-text">
                        <?php countBooks($conn) ?>
                    </h2>
                    <hr>
                    <p class="m-0 text-center"><a href="?page=books" class="text-dark">View Details</a></p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-xl-3 mb-4">
            <div class="card bg-primary text-white text-center">
                <div class="card-body" style="background-color: #2f6690; border-radius: .5rem;">
                    <h3 class="card-title">Total Authors</h3>
                    <h2 class="card-text">
                        <?php countAuthors($conn) ?>
                    </h2>
                    <hr>
                    <p class="m-0 text-center"><a href="?page=authors" class="text-white">View Details</a></p>
                </div>
            </div>
        </div>
        
        <div class="col-lg-4 col-md-6 col-xl-3 mb-4">
            <div class="card bg-success text-white text-center">
                <div class="card-body" style="background-color: #16425b; border-radius: .5rem;">
                    <h3 class="card-title">Total Books Borrowed</h3>
                    <h2 class="card-text">
                        <?php countBooksBorrowed($conn) ?>
                    </h2>
                    <hr>
                    <p class="m-0 text-center"><a href="?page=stats" class="text-white">View Details</a></p>
                </div>
            </div>
        </div>
    </div>
    <?php endif; ?>

    <?php if(isset($_SESSION['role']) && $_SESSION['role'] == 'user'): ?>
    <div class="mt-5 row">
        <div class="col-12 rounded-0 text-center">
            <h4 class="mt-3 mb-3">CHECK OUT OUR COLLECTION OF MAGICAL ITEMS: BOOKS!</h4>
            <a href="./" class="btn btn-lg rounded-.5 text-white mb-3" style="background-color: #16425b;">Borrow Now</a>
        </div>
    </div>
    <?php endif; ?>

    <a href="./book_app"></a>

    <div class="row">
    <?php if(isset($_SESSION['role']) && $_SESSION['role'] == 'admin'): ?>
        <div class="col-lg-6">
        <div class="card bg-light" style="color: #16425b;">
                <div class="card-body">
                    <h3 class="card-title text-center mb-3">Top Borrowers</h3>
            <table id="topBorrower" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr>
                        <th>Top</th>
                        <th>Name</th>
                        <th>Book Borrowed</th>
                    </tr>
                </thead>
                <tbody>
                <?php 
                    $i = 1;
                    $result = mysqli_query($conn,"SELECT tbl_orders.ord_uid as userid,COUNT(tbl_orders.ord_uid) as ord_count,users_login.fname,users_login.lname FROM tbl_orders JOIN users_login ON tbl_orders.ord_uid = users_login.id GROUP BY userid ORDER BY ord_count DESC LIMIT 5");
                    if(mysqli_num_rows($result) > 0):
                    foreach($result as $top):
                ?>
                    <tr>
                        <td><?= $i++ ?></td>
                        <td><?= ucfirst($top['fname'].' '.$top['lname']);?></td>
                        <td><?= $top['ord_count'] ?></td>
                    </tr>
                <?php
                    endforeach;
                    else:
                ?>
                    <tr colspan="3">No Borrower</tr>
                <?php endif;  ?>
                </tbody>
            </table>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
        <div class="card bg-light" style="color: #16425b;">
                <div class="card-body">
                    <h3 class="card-title text-center mb-3">Top Books Borrowed</h3>
                    <table id="topBooks" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr>
                        <th>Top</th>
                        <th>Book Name</th>
                        <th>Count</th>
                    </tr>
                </thead>
                <tbody>
                <?php 
                    $i = 1;
                    $result = mysqli_query($conn,"SELECT tbl_orderdetails.ords_id as bookid,COUNT(tbl_orderdetails.ords_id) as book_count,tbl_books.title as btitle FROM tbl_orderdetails JOIN tbl_books ON tbl_books.id = tbl_orderdetails.ords_id GROUP BY bookid ORDER BY book_count DESC LIMIT 5");
                    if(mysqli_num_rows($result) > 0):
                    foreach($result as $top):
                ?>
                    <tr>
                        <td><?= $i++ ?></td>
                        <td><?= ucfirst($top['btitle']);?></td>
                        <td><?= $top['book_count'] ?></td>
                    </tr>
                <?php
                    endforeach;
                    else:
                ?>
                    <tr colspan="3">No Borrower</tr>
                <?php endif;  ?>
                </tbody>
            </table>
                </div>
            </div>
        </div>
        <?php endif; ?>
    </div>

</div>