<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stud_home.aspx.cs" Inherits="apms_app_.Account.Student.Stud_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Building modern website with html,css,bootstrap,jQuery">
    <meta name="keywords" content="HTML5,CSS3,Bootstrap,Web Design, Modern Website">
    <title>student</title>
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">

    <!-- fav icon -->
    <link rel="shortcut icon" href="img/pm.png">

    <!--animate-->
    <link rel="stylesheet" href="css/animate/animate.css">

    <!--style css-->
    <link rel="stylesheet" href="css/style.css">

    <!--magnific popup-->
    <link rel="stylesheet" href="css/magnific-popup/magnific-popup.css">

    <!--owl crouseal-->
    <link rel="stylesheet" href="css/owl/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl/owl.theme.default.min.css">

    <!-- fontawesome -->
    <link rel="stylesheet" href="css/font-awesome/css/fontawesome.min.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- Bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
    <!-- reponsive css -->
    <link rel="stylesheet" href="css/responsive.css">
</head>
<body data-spy="scroll" data-target=".fixed-top" data-offset="65">
    
    <header>
        <form id="form1" runat="server">
<nav class="navbar navbar-expand-lg navbar-light fixed-top">
      <div class="container-fluid">
          <div class="demo-nav-wrapper">
              
              <div class="collapse navbar-collapse" id="demo-menu">
                  <h3><strong>APMS</strong></h3>&nbsp&nbsp&nbsp
                  <h5 style="color:black;">Student Section</h5>&nbsp&nbsp&nbsp
                  <ul class="nav navbar-nav">
                      
                      <li><a class="smooth-scroll nav-link" href="Home.aspx" >Home</a></li>
                   
                      <li><a class="smooth-scroll nav-link" href="#work">Photo Gallery</a></li>
                      <li><a class="smooth-scroll nav-link" href="#team">Team</a></li>
         
                      <li><a class="smooth-scroll nav-link" href="#contact">Contact</a></li>
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                       <asp:Button ID="Button4" runat="server" Text="SignOut" class=" btn  btn-lg btn-outline-primary btn-white" Onclick="SignOut_Click"/>
                  </ul>
                  </div>
          </div>
      </div>
</nav>
    </header>

    <section id="home">

        <div id="home-cover" class="bg-parallax animate fadeIn"  style="background:url(s.png)">

            <div id="home-content-box">

                <div id="home-content-box-inner" class="text-center">

                    <div id="home-heading" class="animated zoomIn">

                        <h1>Student Section</h1>
                        <h3>Academic Project Management System</h3>

                    </div>
                    <div id="home-btn" class="animated zoomIn">
                        <a class=" btn  btn-lg btn-outline-primary btn-white" href="Create_group.aspx" role="button"  title="View our Work">Group Formation</a>
                    </div>
                </div>

            </div>

        </div>


    </section>
    
    <section id="services">
              
        <div class="content-box">

            <div class="content-title wow animated fadeInDown" data-wow-duration="1s" data-wow-delay=".5s">

                <h3>Students can do here...</h3>
                <div class="content-title-underline"></div>
            </div>


            
                
 
            <div class="container">
                <div class="row wow animated fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                    <div class="col-md-4">
                        <div class="service-item">

                            <div class="service-item-icon">
                                <i class="fas fa-users fa-2x"></i>
                            </div>
                            <div class="service-item-title">
                                <h3>Edit Profile</h3>
                            </div>
                            <div class="service-item-description">
                                <p>Students can edit profile here.</p>
                                <br />
                            </div>
                    <div id="home-btn" class="animated zoomIn">
                         <asp:Button ID="Button1" CssClass=" btn  btn-lg btn-outline-primary btn-white" runat="server" Text=" Edit Profile" OnClick="Button1_Click" />                          
                    </div>
                        </div>
                    </div>
                   
               
                    <div class="col-md-4">
                        <div class="service-item">

                            <div class="service-item-icon">
                                <i class="fas fa-users fa-2x"></i>
                            </div>
                            <div class="service-item-title">
                                <h3>Group Details </h3>
                            </div>
                            <div class="service-item-description">
                                <p>Project group formation and details are here.</p>
                                <br />
                            </div>
                          <div id="home-btn" class="animated zoomIn">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass=" btn  btn-lg btn-outline-primary btn-white" Text="View Group" />
                    </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">

                            <div class="service-item-icon">
                                <i class="fas fa-users fa-2x"></i>
                            </div>
                            <div class="service-item-title">
                                <h3>Project</h3>
                            </div>
                            <div class="service-item-description">
                                <p>Students can Upload their project work here.</p>
                                <br />
                            </div>
                            
                      
                          <div id="home-btn" class="animated zoomIn">
        <asp:Button ID="Button3" runat="server" Text="Go to Project" CssClass=" btn  btn-lg btn-outline-primary btn-white" OnClick="Button3_Click" />                   
                           
                           </div>
                        </div>
                    </div>
    </div>
                </div>
            </section>
    
    </form>
    <!--Gallery section-->
   <section id="work">
        <div class="content-box">

            <div class="content-title wow animated fadeInDown" data-wow-duration="1s" data-wow-delay=".5s">

                <h3>Photo Gallery</h3>
                <div class="content-title-underline"></div>

            </div>
            <div class="container-fluid">
                <div class="row no-gutters wow animated fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/work/work1.jpg" title="work desc">
                                <img src="img/work/work1.jpg" style="height:165px; width:305px"; class="img-responsive" alt="work">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/work/work2.jpg" title="work desc">
                                <img src="img/work/work2.jpg" style="height:165px; width:305px"; class="img-responsive" alt="work">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/work/work3.jpg" title="work desc">
                                <img src="img/work/work3.jpg" style="height:165px; width:305px"; class="img-responsive" alt="work">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/work/work4.jpg" title="work desc">
                                <img src="img/work/work4.jpg" style="height:165px; width:305px"; class="img-responsive" alt="work">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/work/work5.jpg" title="work desc">
                                <img src="img/work/work5.jpg" style="height:165px; width:305px"; class="img-responsive" alt="work">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/work/work6.jpg" title="work desc">
                                <img src="img/work/work6.jpg" style="height:165px; width:305px"; class="img-responsive" alt="work">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/work/work7.jpg" title="work desc">
                                <img src="img/work/work7.jpg" style="height:165px; width:305px"; class="img-responsive" alt="work">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/work/work8.jpg" title="work desc">
                                <img src="img/work/work8.jpg" style="height:165px; width:305px"; class="img-responsive" alt="work">
                            </a>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>

    <!-- team section -->
    <section id="team">
        <div class="content-box">

            <div class="content-title wow animated fadeInDown" data-wow-duration="1s" data-wow-delay=".5s">

                <h3>Our Team</h3>
                <div class="content-title-underline"></div>
            </div>

            <div class="container">
                <div class="row wow animated fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                    <div class="col-md-12">
                        <div id="team-members" class="owl-carousel owl-theme">
                            <div class="team-member">
                                <img src="team1.JPG" class="img-responsive" alt="team member">
                                <div class="team-member-info text-center">
                                    <h4 class="team-member-name">Aditya Jadhav</h4>
                                    <h4 class="team-member-designation">Developer</h4>
                                    <ul class="social-list">
                                        <li>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="team-member">
                                <img src="team2.JPG" class="img-responsive" alt="team member">
                                <div class="team-member-info text-center">
                                    <h4 class="team-member-name">Sanket Mali</h4>
                                    <h4 class="team-member-designation">Developer</h4>
                                    <ul class="social-list">
                                        <li>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="team-member">
                                <img src="team3.jpg" class="img-responsive" alt="team member">
                                <div class="team-member-info text-center">
                                    <h4 class="team-member-name">Shrihari Aundhakar</h4>
                                    <h4 class="team-member-designation">Developer</h4>
                                    <ul class="social-list">
                                        <li>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="team-member">
                                <img src="team4.jpeg" class="img-responsive" alt="team member">
                                <div class="team-member-info text-center">
                                    <h4 class="team-member-name">Akash Amrolkar</h4>
                                    <h4 class="team-member-designation">Developer</h4>
                                    <ul class="social-list">
                                        <li>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                            <a href="#" class="social-icon icon-gray">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>


    <!--footer section-->
        <footer>
        <div id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div id="contact-left">
                            <h3>APMS</h3>
                            <p>Academic Project Management System is a system for<strong> managing, controlling & monitoring</strong> the projects of student. 
                            </p>
                            <div id="contact-info">
                                <address>
                                    <strong>Address</strong>
                                    <p>TKIET, Warananagar<br>Tal. Panhala, Distt. Kolhapur, Warananagar,<br> Maharashtra 416113</p>
                                </address>

                                <div id="phone-fax-email">
                                    <p>
                                        <strong>Phone:</strong><span>(91) 9689714283</span><br>
                                        <strong>Fax:</strong><span>(91) 9689714283</span><br>
                                        <strong>Email:</strong><span>adityajadhavpatil1299@gmail.com</span>
                                    </p>
                                </div>
                            </div>
                            <ul class="social-list">
                                <li>
                                    <a href="#" class="social-icon icon-white">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a href="#" class="social-icon icon-white">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                    <a href="#" class="social-icon icon-white">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                    <a href="#" class="social-icon icon-white">
                                        <i class="fab fa-youtube"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div id="contact-left">
                            <h3>Contact Us</h3>
                            <form action="#">
                                <input type="text" name="full-Name" placeholder="Full Name" class="form-control"><br>
                                <input type="text" name="email" placeholder="Email Address" class="form-control"><br>
                                <textarea rows="5" name="message" placeholder="Message..." class="form-control"></textarea>

                                <div id="send-btn">
                                    <a class="btn btn-lg btn-general btn-white" href="#" role="button">SEND</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--copyright Section -->

        <div id="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div id="footer-copyrights">
                            <p>copyrights &copy; 2019 all rights reserved by aditya</p>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div id="footer-menu">
                            <ul>
                                <li><a class="smooth-scroll" href="#home">Home</a>/</li>
                                <li><a class="smooth-scroll" href="#services">About</a>/</li>
                                <li><a class="smooth-scroll" href="#price">Handbooks</a>/</li>
                                <li><a class="smooth-scroll" href="#client">Documentation</a>/</li>
                                <li><a class="smooth-scroll" href="#about">History</a>/</li
                                <li><a class="smooth-scroll" href="#team">Team</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>

       <a href="#home" id="back-to-top" class="btn btn-sm btn-blue btn-back-to-top smooth-scroll" title="home" role="button">
      <i class="fas fa-angle-up"></i></a>
    </footer>
    <!-- jquery -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- owl couresal -->
    <script type="text/javascript" src="js/owl/owl.carousel.min.js"></script>
    <!-- bootstrap js -->
    <script type="text/javascript" src="js/bootstrap/bootstrap.min.js"></script>
    <!-- magnific popup-->
    <script type="text/javascript" src="js/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!--counter-->

    <script type="text/javascript" src="js/counter/jquery.waypoints.min.js"></script>
    <script type="text/javascript" src="js/counter/jquery.counterup.min.js"></script>
    <!--Wow.js-->
    <script src="js/wow/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>

    <!-- custom js-->
    <script type="text/javascript" src="js/custom.js"></script>
<!-- custom js-->
 <script type="text/javascript" src=js/easing/jquery.easing.1.3.js></script>

</body>
</html>
