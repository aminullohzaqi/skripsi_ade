<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<?php
    error_reporting(E_ALL ^ E_WARNING);
    session_start();
    if (!isset($_SESSION['usr'])){
        header("location:login.php");
    }
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Data Mining Prediksi Decision Tree C4.5</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

    <!-- Leaflet -->
    <!-- <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
        integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
        crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
        integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
        crossorigin=""></script> -->

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>

    <!-- Datatables -->
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css" />

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="images/bmkg.png" alt="BMKG" style="max-height: 50px;" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                <?php
                if (isset($_GET['menu'])) {
                    $kode=$_GET['menu'];
                }
                else {
                    $kode = "home";
                }
                $level=$_SESSION['lvl'];
                //jika user kaprodi
                if($level=='0'){
                ?>
                        <li <?= $kode == 'home' ? 'class="active"' : '' ?>>
                            <a href='index.php'>
                                <i class='fas fa-tachometer-alt'></i>Dashboard</a>
                        </li>
                        <li <?= $kode == 'data' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=data'>
                                <i class='fas fa-chart-bar'></i>Data Training</a>
                        </li>
                        <li <?= $kode == 'mining' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=mining'>
                                <i class='fas fa-table'></i>Mining</a>
                        </li>
                        <li <?= $kode == 'tree' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=tree'>
                                <i class='far fa-check-square'></i>Pohon Keputusan</a>
                        </li>
                        <li <?= $kode == 'hasil' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=hasil'>
                                <i class='fas fa-calendar-alt'></i>Hasil Prediksi</a>
                        </li>
                        <li <?= $kode == 'user' ? 'class="active"' : '' ?>>
                            <a class='js-arrow' href='index.php?menu=user'>
                                <i class='fas fa-copy'></i>Data User</a>
                            <ul class='list-unstyled navbar__sub-list js-sub-list'>
                                    </ul>
                        </li>
                         <li <?= $kode == 'tentang' ? 'class="active"' : '' ?>>
                            <a class='js-arrow' href='index.php?menu=tentang'>
                                <i class='fas fa-copy'></i>Tentang Aplikasi</a>
                            <ul class='list-unstyled navbar__sub-list js-sub-list'>
                                    </ul>
                        </li>
                        <?php
                        }
                    else{
                        ?>

                        <li <?= $kode == 'home' ? 'class="active"' : '' ?>>
                            <a href='index.php'>
                                <i class='fas fa-tachometer-alt'></i>Dashboard</a>
                        </li>
                         <li <?= $kode == 'prediksi' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=prediksi'>
                                <i class='far fa-check-square'></i>Prediksi</a>
                        </li>
                         <li <?= $kode == 'tree' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=tree'>
                                <i class='far fa-check-square'></i>Pohon Keputusan</a>
                        </li>
                        <li <?= $kode == 'hasil' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=hasil'>
                                <i class='fas fa-calendar-alt'></i>Hasil Prediksi</a>
                        </li>
                        <li <?= $kode == 'tentang' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=tentang'>
                                <i class='far fa-check-square'></i>Tentang Aplikasi</a>
                        </li>
                        <?php

                    }

                    ?>   

                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="images/bmkg.png" alt="BMKG" style="max-height: 50px;" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
<?php
                $level=$_SESSION['lvl'];
                //jika user kaprodi
                if($level=='0'){
                ?>
                        <li <?= $kode == 'home' ? 'class="active"' : '' ?>>
                            <a href='index.php'>
                                <i class='fas fa-tachometer-alt'></i>Beranda</a>
                        </li>
                        <li <?= $kode == 'data' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=data'>
                                <i class='fas fa-chart-bar'></i>Data Training</a>
                        </li>
                        <li <?= $kode == 'mining' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=mining'>
                                <i class='fas fa-table'></i>Mining</a>
                        </li>
                        <li <?= $kode == 'tree' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=tree'>
                                <i class='far fa-check-square'></i>Pohon Keputusan</a>
                        </li>
                        <li <?= $kode == 'hasil' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=hasil'>
                                <i class='fas fa-calendar-alt'></i>Hasil Prediksi</a>
                        </li>
                        <li <?= $kode == 'user' ? 'class="active"' : '' ?>>
                            <a class='js-arrow' href='index.php?menu=user'>
                                <i class='fas fa-copy'></i>Data User</a>
                            <ul class='list-unstyled navbar__sub-list js-sub-list'>
                                    </ul>
                        </li>
                        <li <?= $kode == 'tentang' ? 'class="active"' : '' ?>>
                            <a class='js-arrow' href='index.php?menu=tentang'>
                                <i class='fas fa-copy'></i>Tentang Aplikasi</a>
                            <ul class='list-unstyled navbar__sub-list js-sub-list'>
                                    </ul>
                        </li>
                        <?php
                        }
                    else{
                        ?>
                        <li <?= $kode == 'home' ? 'class="active"' : '' ?>>
                            <a href='index.php'>
                                <i class='fas fa-tachometer-alt'></i>Beranda</a>
                        </li>
                         <li <?= $kode == 'prediksi' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=prediksi'>
                                <i class='far fa-check-square'></i>Prediksi</a>
                        </li>
                         <li <?= $kode == 'tree' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=tree'>
                                <i class='far fa-check-square'></i>Pohon Keputusan</a>
                        </li>
                        <li <?= $kode == 'hasil' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=hasil'>
                                <i class='fas fa-calendar-alt'></i>Hasil Prediksi</a>
                        </li>
                        <li <?= $kode == 'tentang' ? 'class="active"' : '' ?>>
                            <a href='index.php?menu=tentang'>
                                <i class='far fa-check-square'></i>Tentang Aplikasi</a>
                        </li>
                        <?php
                        }
                        ?>  
                        
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <!-- <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form> -->
                            <div class="header-button ml-auto">
                                <!-- <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-comment-more"></i>
                                        <span class="quantity">1</span>
                                        <div class="mess-dropdown js-dropdown">
                                            <div class="mess__title">
                                                <p>You have 2 news message</p>
                                            </div>
                                            <div class="mess__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />
                                                </div>
                                                <div class="content">
                                                    <h6>Michelle Moreno</h6>
                                                    <p>Have sent a photo</p>
                                                    <span class="time">3 min ago</span>
                                                </div>
                                            </div>
                                            <div class="mess__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-04.jpg" alt="Diane Myers" />
                                                </div>
                                                <div class="content">
                                                    <h6>Diane Myers</h6>
                                                    <p>You are now connected on message</p>
                                                    <span class="time">Yesterday</span>
                                                </div>
                                            </div>
                                            <div class="mess__footer">
                                                <a href="#">View all messages</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-email"></i>
                                        <span class="quantity">1</span>
                                        <div class="email-dropdown js-dropdown">
                                            <div class="email__title">
                                                <p>You have 3 New Emails</p>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, 3 min ago</span>
                                                </div>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, Yesterday</span>
                                                </div>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, April 12,,2018</span>
                                                </div>
                                            </div>
                                            <div class="email__footer">
                                                <a href="#">See all emails</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity">3</span>
                                        <div class="notifi-dropdown js-dropdown">
                                            <div class="notifi__title">
                                                <p>You have 3 Notifications</p>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c1 img-cir img-40">
                                                    <i class="zmdi zmdi-email-open"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a email notification</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c2 img-cir img-40">
                                                    <i class="zmdi zmdi-account-box"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Your account has been blocked</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c3 img-cir img-40">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a new file</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__footer">
                                                <a href="#">All notifications</a>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="images/avatar.jpg" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#"><?php echo $_SESSION['nama']; ?></a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="images/avatar.jpg" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">
        <?php echo $_SESSION['nama']; ?>
                                                        </a>
                                                    </h5>
                                                    <span class="email"><?php echo $_SESSION['usr']; ?></span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <!-- <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-account"></i>Account</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-settings"></i>Setting</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-money-box"></i>Billing</a>
                                                </div> -->
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="logout.php">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                        <!--
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">tes</h2>
                                </div>
                            </div>
                        -->
                        </div>
                        <div class="row m-t-25">
                       
                    <?php
                        //menu home
                        if($kode=='home'){
                        ?>
                            <div class="container-fluid">
                                <div class="card">
                                    <div class="card-header bg-primary text-white"><b>SELAMAT DATANG</b></div>
                                    <div class="card-body text-center">
                                        <h5 class="mt-4 mb-4">SISTEM PREDIKSI EFEK GEMPA BUMI MENGGUNAKAN METODE DECISION TREE C4.5</h5>
                                        <img src='images/bmkg.png' width='160' height='auto' style="margin-bottom: 80px" />
                                         <h6 class="mt-5 mb-5">Implementasi Data Mining Sistem Prediksi Efek Gempa Bumi Berdasarkan Parameter Gempa Menggunakan Algoritma C4.5</h6>
                                    </div>
                                </div>
                            </div>
                        <?php
                        }
                        //menu olah data
                        else if ($kode=='data'){
                            include 'data_training.php';
                        }
                        //menu mining (proses pembentukan pohon keputusan)
                        else if($kode=='mining'){
                            include 'mining.php';
                        }
                        //menu pohon keputusan atau rule
                        else if($kode=='tree'){
                            include 'tree.php';
                        }
                        //menu pohon tree2
                        else if($kode=='pohon_tree'){
                            include 'pohon_tree.php';
                        }
                        //menu uji pohon keputusan atau rule
                        else if($kode=='uji_rule'){
                            include 'uji_rule.php';
                        }
                        //menu hasil prediksi
                        else if($kode=='hasil'){    
                            include 'hasil_prediksi.php';
                        }
                        //menu data user
                        else if($kode=='user'){     
                            include 'data_user.php';
                        }
                        //menu tentang aplikai
                        else if($kode=='tentang'){     
                            include 'tentang.php';
                        }
                        //menu prediksi
                        else if($kode=='prediksi'){
                            include 'prediksi.php';
                        }
                        //menu ubah password
                        else if($kode=='ubah_password'){
                            include 'ubah_password.php';
                        }
                        //menu maps
                        else if($kode=='mapku'){
                            include 'mapku.php';
                        }
                        
                        
                    ?>
                         </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
