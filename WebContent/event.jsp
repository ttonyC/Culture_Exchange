<!DOCTYPE html>
<%@page import="com.mvc.utill.DBConnection"%>
<%@page import = " java.sql.Connection" %>
<%@page import = "java.sql.Statement" %>
<%@page import = " java.sql.ResultSet" %>

<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Cultural Exchange-Event</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  
  <title>Cultural Exchange-Event</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/venobox/venobox.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

</head>

<body>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <!-- Uncomment below if you prefer to use a text logo -->
        <!-- <h1><a href="#main">C<span>o</span>nf</a></h1>-->
        <a href="#intro" class="scrollto"><img src="img/logo.png" alt="" title=""></a>
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="index.jsp">Home Page</a></li>
          <li><a href="event.jsp">Event</a></li>
          <li><a href="forum.jsp">Forum</a></li>
          <li><a href="wiki.jsp">Wiki</a></li>
          <li><a href="signin.jsp">SignIn</a></li>
          <li><a href="signin.jsp">SignUp</a></li>
          <li><a href="about_us.jsp">About Us</a></li>
		</ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container wow fadeIn">
      <a href="event_create.jsp" ><h1 class="mb-4 pb-0">Host/Join An<br><span>Event</span> Now</h1></a>
      
      
    </div>
  </section>

  <main id="main">

    <!--==========================
      About Section
    ============================-->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h2>About This Page</h2>
            <p>Create your own event or join others to know new friend and explore the world more!</p>
          </div>
          <div class="col-lg-3">
            <h3>Who</h3>
            <p>Everyone can join you can exchange the culture</p>
          </div>
          <div class="col-lg-3">
            <h3>How</h3>
            <p>Check out the existing events below</p>
          </div>
        </div>
      </div>
    </section>

    <!--==========================
      Existing Event Section
    ============================-->
    <section id="speakers" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>Event gallery</h2>
          <p>Here are some of our events</p>
        </div>
        
        
        
		<%
   DBConnection db = new DBConnection();
		  Connection con = db.getCon();
		  
		  Statement statement =  con.createStatement();
		  ResultSet results = statement.executeQuery("SELECT * FROM event");
		  %>  
		  <div class="row">
          <% 
          while(results.next())
          {%>
        	  <div class="col-lg-4 col-md-6">
                <div class="speaker">
                  <img src="images/events/hotpot.jpeg" alt="event 1" class="img-fluid" style="width: 250px; height: 250px;"> <!-- REPLACE WITH IMAGES FROM DB WHEN PIC UPLOAD IS DONE/  -->
                  
                  <div class="details">
                  <h6><%=results.getString("username")%></h6>
                    <h3><a href="event_hotpot.jsp"><%=results.getString("event_title") %></a></h3>
                    
                    <div class="social">
                      
                    </div>
                  </div>
                </div>
              </div>
        	  
        <%  }


%>
		

       <!--  <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="images/events/hotpot.jpeg" alt="event 1" class="img-fluid">
              <div class="details">
                <h3><a href="event_hotpot.jsp">Hot Pot! MeetUp!</a></h3>
                <p>come and eat</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
           <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="images/events/language_exchange.jpg" alt="event 2" class="img-fluid">
              <div class="details">
                <h3><a href="event_language_exchange.jsp">International Language Exchange</a></h3>
                <p>Learn new language</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="images/events/english_learning_cafe.jpg" alt="event 3" class="img-fluid">
              <div class="details">
                <h3><a href="event_english_learning_cafe.jsp">English Learning Cafe</a></h3>
                <p>Study English</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="images/events/love_toronto.jpg" alt="event 4" class="img-fluid">
              <div class="details">
                <h3><a href="event_love_toronto.jsp">#Love: Toronto</a></h3>
                <p>Story in Toronto</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="images/events/burger.jpg" alt="event 5" class="img-fluid">
              <div class="details">
                <h3><a href="event_burger.jsp">Best Burger In the Town?</a></h3>
                <p>It's all about Burgers</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="images/events/hikes.jpeg" alt="event 6" class="img-fluid">
              <div class="details">
                <h3><a href="event_hikes.jsp">Hikes in Toronto</a></h3>
                <p>Outdoor Activity</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>-->
      
      

    </section>

  <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>
<hr>
        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">

                        <p class="copyright text-muted">Copyright &copy; Culture Exchange 2019</p>
                    </div>
                </div>
            </div>
        </footer>


  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/venobox/venobox.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
</body>

</html>
