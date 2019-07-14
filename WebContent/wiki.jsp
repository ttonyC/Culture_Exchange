<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Cultural Exchange-WiKi</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

        <!-- Custom styles for this template -->
        <link href="css/clean-blog.min.css" rel="stylesheet">

    </head>

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

        <!-- Page Header -->
        <header class="masthead" style="background-image: url('images/wikiB.jpg')">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <div class="post-heading">
                            <h1>Man must explore, and this is exploration at its greatest</h1>
                        
                                             <!-- search bar -->
   <div class="container">         
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">Filter by</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#language">language</a></li>
                      <li class="divider"></li>
                      <li><a href="#date">date</a></li>
                    </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Search term...">
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </div>
	</div>
</div>
                        </div>
                    </div>
                </div>
            </div>
        </header>


        <!-- Post Content -->
      
        <blockquote class="blockquote">The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>

        <hr>

<div class="row">


        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

<!--
          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
-->

            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div class="row">

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="wiki_spring_fest.jsp"><img class="card-img-top" src="images/spring-fest.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="wiki_spring_fest.jsp">Spring Festival</a>
                  </h4>
                  <p class="card-text">Chinese New Year is a Chinese festival that celebrates the 
                  beginning of a new year on the traditional Chinese calendar. The festival is usually 
                  referred to as the Spring Festival in modern China</p>
                </div>
                <div class="card-footer">
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="wiki_qixi_fest.jsp"><img class="card-img-top" src="images/qi-xi-fest.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="wiki_qixi_fest.jsp">Qixi Festival</a>
                  </h4>
                  <p class="card-text">The Qixi Festival, also known as the Qiqiao Festival, 
                  is a Chinese festival celebrating the annual meeting of the cowherd and weaver 
                  girl in mythology.It falls on the 7th day of the 7th lunar month on the Chinese
                   calendar.</p>
                </div>
                <div class="card-footer">
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="wiki_mid_autumn_fest.jsp"><img class="card-img-top" src="images/mid-autumn-fest.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="wiki_mid_autumn_fest.jsp">Mid Autumn Festival</a>
                  </h4>
                  <p class="card-text">The Mid-Autumn Festival is a harvest festival celebrated notably by the Chinese 
                  and Vietnamese people.The festival is held on the 15th day of the 8th month of the lunar 
                  calendar with full moon at night, corresponding to late September to early October of the Gregorian 
                  calendar with a full moon at night</p>
                </div>
                <div class="card-footer">
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="wiki_Dragon_Boat_Festival.jsp"><img class="card-img-top" src="images/Dragon-Boat-Festival.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="wiki_Dragon_Boat_Festival.jsp">Dragon Boat Festival</a>
                  </h4>
                  <p class="card-text">The Duanwu Festival, also often known as the Dragon Boat Festival, is a traditional 
                  holiday originating in China, occurring near the summer solstice. It is also known as Zhongxiao Festival 
                  (Chinese: 忠孝節; pinyin: Zhōngxiàojié), commemorating fealty and filial piety. </p>
                </div>
                <div class="card-footer">
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="wiki_montreal_jazz_festival.jsp"><img class="card-img-top" src="images/montreal-jazz-festival.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="wiki_montreal_jazz_festival.jsp">Montreal International Jazz Festival</a>
                  </h4>
                  <p class="card-text">The Festival International de Jazz de Montréal (English: Montreal International 
                  Jazz Festival) is an annual jazz festival held in Montreal, Quebec, Canada. The Montreal Jazz Fest
                   holds the 2004 Guinness World Record as the world's largest jazz festival.</p>
                </div>
                <div class="card-footer">
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="wiki_canadian_national_exhibition.jsp"><img class="card-img-top" src="images/Canadian_National_Exhibition.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="wiki_canadian_national_exhibition.jsp">Canadian National Exhibition</a>
                  </h4>
                  <p class="card-text">The Canadian National Exhibition (CNE),is an annual event that takes
                   place at Exhibition Place in Toronto, Ontario, Canada.</p>
                </div>
                <div class="card-footer">
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->


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