<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Cultural Exchange-About us</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

        <!-- Custom styles for this template -->
        <link href="css/clean-blog.min.css" rel="stylesheet">

    </head>


<!-- COOKIES -->

<!-- END COOKIES -->


    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Home Page</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="event.jsp">Event</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="forum.jsp">Forum</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="wiki.jsp">Wiki</a>
                        </li>     
                               <%
                               String username = (String) session.getAttribute("username");
        					   
                               if (username == null)
                               {                             
                               	username = ""; 
                               %>            
                        <li class="nav-item">
                            <a class="nav-link" href="signin.jsp">Sign in</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="signup.jsp">Sign up</a>
                        </li>
                        <%
                               } else {
                        %>
                        <li class="nav-item">
                        <form action="LogoutServlet" method="post">
                        <input class="nav-link" type="submit" value="logout"/>
                        </form>
                        </li>
                        <%} %>
                        <li class="nav-item">
                            <a class="nav-link" href="about_us.jsp">About Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navigation -->
        
        

        <!-- Page Header -->
        <header class="masthead" style="background-image: url('images/home-bg.png')">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <div class="site-heading">
                            <h1>About us Page</h1>
                            <span class="subheading">Culture Exchange</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>


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

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/clean-blog.min.js"></script>

    </body>

</html>