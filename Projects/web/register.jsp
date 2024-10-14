<%@page import="Users.UserDTO"%>
<%@page import="Users.UserError"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="images/favicon.png" type="">

        <title> OFFICE SUPPLY SHOP - Register </title>

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- font awesome style -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>
    <body>
        <div class="hero_area">
            <div class="bg-box">
                <!--                <img src="images/backGround.jpg" alt="">-->
            </div>
            <!-- header section strats -->
            <header class="header_section" style="background-color: #000000">
                <div class="container">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="home.jsp">
                            <span>
                                OFFICE SUPPLY SHOP
                            </span>
                        </a>

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class=""> </span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav  mx-auto ">
                                <li class="nav-item active">
                                    <a class="nav-link" href="home.jsp">HOME<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="shop.jsp">SHOP</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.jsp">ABOUT</a>
                                </li>
                            </ul>
                            <div class="user_option">

                                <form class="form-inline">
                                    <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                    </button>
                                </form>
                                <a href="login.jsp" class="order_online">
                                    Login
                                </a>
                                <form class="form-inline">
                                    <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                                    </button>
                                </form>
                                <a href="register.jsp" class="order_online">
                                    Register
                                </a>
                            </div>
                        </div>
                    </nav>
                </div>
            </header>
            <!-- end header section -->

            <!-- register section -->
            <section class="register_section layout_padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 offset-md-3">
                            <div class="register_container">
                                <div class="heading_container heading_center">
                                    <div class="col-md-12 text-center">
                                        <h2 class="h3 mb-3 text-black">Register Account</h2>
                                    </div>
                                </div>
                                <form action="MainController" method="POST">
                                    <%
                                        UserError userError = (UserError) request.getAttribute("USER_ERROR");
                                        if (userError == null) {
                                            userError = new UserError();
                                        }
                                    %> 
                                    <div class="p-3 p-lg-5 border">
                                        <div class="form-group row">
                                            <div class="col-md-12">
                                                <label for="userID" class="text-black">User ID <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control" id="userID" name="userID">
                                                <span class="text-danger"><%= userError.getUserID()%></span></br>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-md-12">
                                                <label for="fullName" class="text-black">Full Name <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control" id="fullName" name="fullName">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-md-12">
                                                <label for="gmail" class="text-black">Email <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control" id="roleID" name="gmail">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-md-12">
                                                <label for="address" class="text-black">Address <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control" id="roleID" name="address">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-md-12">
                                                <label for="password" class="text-black">Password <span class="text-danger">*</span></label>
                                                <input type="password" class="form-control" id="password" name="password">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-md-12">
                                                <label for="confirm" class="text-black">Confirm Password <span class="text-danger">*</span></label>
                                                <input type="password" class="form-control" id="confirm" name="confirm">
                                                <span class="text-danger"><%= userError.getConfirm()%></span></br>
                                            </div>

                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-12 user_option">
                                                <input type="submit" class="order_online btn btn-primary btn-lg btn-block" name="action"value="Register">
                                                <a href="home.jsp" class="order_online btn btn-primary">
                                                    Cancel
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                </form>
                                <div class="text-center mt-3">
                                    <p>Already have an account? <a href="login.jsp">Login here</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end register section -->
        </div>

        <!-- footer section -->
        <footer class="footer_section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 footer-col">
                        <div class="footer_contact">
                            <h4>
                                Contact Us
                            </h4>
                            <div class="contact_link_box">
                                <a href="">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <span>
                                        Ho Chi Minh City
                                    </span>
                                </a>
                                <a href="">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <span>
                                        Call +84 69 419 222
                                    </span>
                                </a>
                                <a href="">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <span>
                                        namvnse181565@fpt.edu.vn
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 footer-col">
                        <div class="footer_detail">
                            <a href="" class="footer-logo">
                                Join the OFFICE SUPPLY SHOP Community
                            </a>
                            <p>
                                Become a part of the OFFICE SUPPLY SHOP community! Connect with fellow office supply enthusiasts, share your experiences, ask questions, and learn from others who share your passion. Our community is here to support you every step of the way.
                            </p>
                            <div class="footer_social">
                                <a href="">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-pinterest" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 footer-col">
                        <h4>
                            Opening Hours
                        </h4>
                        <p>
                            Everyday
                        </p>
                        <p>
                            08.00 Am -10.00 Pm
                        </p>
                    </div>
                </div>
                <div class="footer-info">
                    <p>
                        &copy; <span id="displayYear"></span> All Rights Reserved By
                        <a href="https://html.design/">Free Html Templates</a><br><br>
                        &copy; <span id="displayYear"></span> Distributed By
                        <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>
                    </p>
                </div>
            </div>
        </footer>
        <!-- footer section -->

        <!-- jQery -->
        <script src="js/jquery-3.4.1.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.js"></script>
        <!-- custom js -->
        <script src="js/custom.js"></script>
    </body>
</html>