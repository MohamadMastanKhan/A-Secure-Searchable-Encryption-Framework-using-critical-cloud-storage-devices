<%-- 
    Document   : DataOwner
    Created on : Dec 26, 2019, 5:58:57 PM
    Author     : Venkat Sweety
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>A Secure Searchable Encryption Framework for Privacy-Critical Cloud Storage Services</title>
<!-- 
Avalon Template 
http://www.templatemo.com/tm-513-avalon
-->
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <style>
            table tr th{
                padding:10px;
                font-size: 15px;
            }
        </style>
    </head>

<body>

    <section class="banner" id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="left-banner-content">
                        <div class="text-content">
                            <h3><font color="yellow" style="font-weight:bolder;">A Secure Searchable Encryption Framework for There you go<br>Privacy-Critical Cloud Storage Services</font></h3>
                            <div class="line-dec"></div>
                            <h2> </h2>
                            <div class="white-border-button">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="right-banner-content">
                       
                        <h2>Abstract</h2>
                        
                        <div class="line-dec"></div>
                        <p align="justify">“ Searchable public key encryption (SPKE) is a useful public key cryptographic primitive that allows a user to perform
keyword searches over publicly encrypted messages on an untrusted storage server while guaranteeing the privacy of the
original messages as well as the search keywords. However, most of the previously proposed SPKE frameworks suffer from the
security vulnerability caused by the keyword guessing attack and some other weaknesses. Inspired by the ideas of certificatebased
cryptography and signcryption, we present a new SPKE framework called certificate-based searchable encryption.   ”</p>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="best-offer" id=best-offer-section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="best-offer-left-content">
                        <div class="icon" style="border: 2px solid red;"><img src="img/arch.jpg" ></div>
                        <h4>Proposed CBSE FrameWork</h4>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="best-offer-right-content">
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <% String username=(String)session.getAttribute("username");
                                %>
                                <h2><em>Welcome <%=username%></em></h2>
                                
                                <div class="pink-button">
                                    
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <table border="2px">
                                    <tr>
                                        <th><a href="UserHome.jsp">Home</a></th></tr>
                                    <tr><th><a href="ViewProfile.jsp">View Profile</a></th></tr>
                                    <tr><th><a href="SearchFile.jsp">Search File</a></th></tr>
                                    <tr><th><a href="ViewUserDecryptKeyStatus.jsp">Decrypt key Status</a></th></tr>
                                  
                                    <tr><th><a href="ViewDownloadFiles.jsp">View Downloaded Files</a></th></tr>
                                       <tr><th><a href="DataUser.jsp">Logout</a></th></tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="events" id="events-section">
        <div class="content-wrapper">
            <div class="inner-container container-fluid">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-heading">
                            <div class="filter-categories">
                                <ul class="project-filter">
                                    <li class="filter" data-filter="all"><a href="CloudHome.jsp"><span>Home</span></a></li>
                                    <li class="filter" data-filter="design"><a href="ViewDataOwners.jsp"><span>View Data Owners</span></a></li>
                                    <li class="filter" data-filter="start" ><a href="ViewDataUsers.jsp"><span>View Data Users</span></a></li>
                                    <li class="filter" data-filter="web"><a href="Cloud.jsp"><span>Logout</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-10 col-sm-12 col-md-offset-1">
                        <div class="projects-holder">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </section>
    <footer>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <p>Copyright &copy; 2020 Venkat Java Projects 
                    
                     
                    by Venkat</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>
    
    <script src="js/datepicker.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() 
	{
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
</body>
</html>