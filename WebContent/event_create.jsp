<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>New topic</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom -->
        <link href="css/custom.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

        <!-- fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="font-awesome-4.0.3/css/font-awesome.min.css">

        <!-- CSS STYLE-->
        <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />

        <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
        <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />

    </head>
    <body>

        <div class="container-fluid">

            <!-- Slider -->
            <div class="tp-banner-container">
                <div class="tp-banner" >
                    <ul>	
                        <!-- SLIDE  -->
                      
                            <!-- MAIN IMAGE -->
                            <center>
                            <img src="images/Clog.jpg"  alt="img"  >
                            </center>
                            
                            <!-- LAYERS -->
                   
                    </ul>
                </div>
            </div>
            <!-- //Slider -->

            <div class="headernav">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-1 col-xs-3 col-sm-2 col-md-2 logo "><a href="index.jsp"><img src="images/logo.jpg" alt=""  /></a></div>
                        <div class="col-lg-3 col-xs-9 col-sm-5 col-md-3 selecttopic">
                            <div class="dropdown">
                                <a data-toggle="dropdown" href="#">Nav Bar</a> <b class="caret"></b>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="index.jsp">Home</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-2" href="event.jsp">Event</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-3" href="forum.jsp">Forum</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-4" href="wiki.jsp">Wiki</a></li>
                                    
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
                        <div class="col-lg-4 search hidden-xs hidden-sm col-md-3">
                            <div class="wrap">
                                <form action="#" method="post" class="form">
                                    <div class="pull-left txt"><input type="text" class="form-control" placeholder="Search Topics"></div>
                                    <div class="pull-right"><button class="btn btn-default" type="button"><i class="fa fa-search"></i></button></div>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4 col-xs-12 col-sm-5 col-md-4 avt">
                            <div class="stnt pull-left">                            
                                <form action="03_new_topic.jsp" method="get" class="form">
                                    <button class="btn btn-primary">Start New Topic</button>
                                </form>
                            </div>
                            <div class="env pull-left"><i class="fa fa-envelope"></i></div>

                            <div class="avatar pull-left dropdown">
                                <a data-toggle="dropdown" href="#"><img src="images/avatar.jpg" alt="" /></a> <b class="caret"></b>
                                <div class="status green">&nbsp;</div>
                                <ul class="dropdown-menu" role="menu" >
                                <%if (username != null){ %>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">My Profile</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-2" href="#">Inbox</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-3" href="#">Log Out</a></li>
                                <%} %>
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>



            <section class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 breadcrumbf">
                            <a href="#">Borderlands 2</a> <span class="diviver">&gt;</span> <a href="#">General Discussion</a> <span class="diviver">&gt;</span> <a href="#">New Topic</a>
                        </div>
                    </div>

                </div>


                <div class="container">
                    <div class="row">
                    
                    
                    
                        <div class="col-lg-8 col-md-8">
                        



                            <!-- POST -->
                            <div class="post">
                            	
                              <form action="EventServlet" class="form newtopic" method="post">
                                    <div class="topwrap">
                                        <div class="userinfo pull-left">
                                            <div class="avatar">
                                                <img src="images/avatar4.jpg" alt="" />
                                                <div class="status red">&nbsp;</div>
                                            </div>

                                            <div class="icons">
                                                <img src="images/icon3.jpg" alt="" /><img src="images/icon4.jpg" alt="" /><img src="images/icon5.jpg" alt="" /><img src="images/icon6.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="posttext pull-left">

                                            <div>
                                                <input type="text" placeholder="Enter event name" class="form-control" name="event_title"/>
                                                <input type="text" placeholder="Enter event address?" class="form-control" name="event_location"/>
                                                 
                                                       <input type="text" id="friends" placeholder="What time should everyone arrive?" class="form-control" name="event_time"  />
                                                  
                                                       <input type="text" name="event_date" placeholder="What is the date of this event?" class="form-control"  id="everyone" /> 
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-6 col-md-6">
                                                    <select name="event_cat" id="category"  class="form-control" >
                                                        <option value="" disabled selected>Select Category</option>
                                                        <option value="technology">Technology.</option>
                                                        <option value="religion">Religion.</option>
                                                        <option value="music">Music.</option>
                                                        <option value="food">Food.</option>
                                                        <option value="art">Art & Education.</option>
                                                        
                                                    </select>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                   
                                                    </select>
                                                      
                                                     
                                                </div>
                                                 
                                            </div>

                                            <div>
                                                <textarea name="event_content" id="desc" placeholder="Post content"  class="form-control" ></textarea>
                                            </div>
                                            <div class="row newtopcheckbox">
                                                <div class="col-lg-6 col-md-6">
                                                
                                                    <div class="row">
                                                        <div class="col-lg-6 col-md-6">
                                                            <div class="checkbox">
                                                                <label>
                                                                 
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6">
                                                            <div class="checkbox">
                                                                <label>
                                                                    
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div>
                                                       
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4">
                                                           
                                                        </div>
                                                        <div class="col-lg-3 col-md-4">
                                                            <div class="checkbox">
                                                                <label>
                                                                 

                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-4">
                                                            <div class="checkbox">
                                                                <label>
                                                                   

                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="clearfix"></div>
                                    </div>                              
                                    <div class="postinfobot">

                                        <div class="notechbox pull-left">
                                            <input type="checkbox" name="note" id="note" class="form-control" />
                                        </div>

                                        <div class="pull-left">
                                            <label for="note"> Email me when some one post a reply</label>
                                        </div>

                                        <div class="pull-right postreply">
                                            <div class="pull-left smile"><a href="#"><i class="fa fa-smile-o"></i></a></div>
                                            <div class="pull-left"><button type="submit" class="btn btn-primary">Post</button></div>
                                            <div class="clearfix"></div>
                                        </div>


                                        <div class="clearfix"></div>
                                    </div>
                                </form>


            </section>

            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-1 col-xs-3 col-sm-2 logo "><a href="#"><img src="images/logo.jpg" alt=""  /></a></div>
                        <div class="col-lg-8 col-xs-9 col-sm-5 ">Copyright &copy; Culture Exchange 2019</div>
                        <div class="col-lg-3 col-xs-12 col-sm-5 sociconcent">
                            <ul class="socialicons">
                                <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-cloud"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
        </div>

        <!-- get jQuery from the google apis -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.js"></script>

        <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
        <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
        <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>


        <!-- LOOK THE DOCUMENTATION FOR MORE INFORMATIONS -->
        <script type="text/javascript">

            var revapi;

            jQuery(document).ready(function() {
                "use strict";
                revapi = jQuery('.tp-banner').revolution(
                    {
                        delay: 15000,
                        startwidth: 1200,
                        startheight: 278,
                        hideThumbs: 10,
                        fullWidth: "on"
                    });

            });	//ready

        </script>

        <!-- END REVOLUTION SLIDER -->
    </body>
</html>