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
         <link rel="stylesheet" href="table.css">
          

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <style>
            table{
                margin-bottom:250px;
            }
            table tr th{
                padding:10px;
                color:palevioletred;
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
                            <h3><font color="yellow" style="font-weight:bolder;">A Secure Searchable Encryption Framework for <br>Privacy-Critical Cloud Storage Services</h3>
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
                        <p align="justify">“ Searchable encryption has received a signiﬁcant attention from the research community with various constructions being proposed, each achieving asymptotically optimal complexity for speciﬁc metrics (e.g., search, update). Despite their elegance, the recent attacks and deployment efforts have shown that the optimal asymptotic complexity might not always imply practical performance, especially if the application demands a high privacy. In this article, we introduce a novel Dynamic Searchable Symmetric Encryption (DSSE) framework called Incidence Matrix (IM)-DSSE, which achieves a high level of privacy, efﬁcient search/update, and low client storage with actual deployments on real cloud settings. We harness an incidence matrix along with two hash tables to create an encrypted index, on which both search and update operations can be performed effectively with minimal information leakage.  ”</p>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>


     <section class="best-offer" id=best-offer-section>
        <div id="content">
                              <% String username=(String)session.getAttribute("username");
                                %>
                                <center><h2><font color="red">View Attacked Files</font></h2></center>
                                <%@page import="java.sql.*"%>
<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_searchable","root","root");
   Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select * from attacker");
  %>
                                <center>   <table border="2px">
                                    <tr>
                                        <th>ID</th>
                                        <th>Attacker</th>
                                        <th>FileName</th>
                                        <th>Attacked Token</th>
                                        <th>Date</th>
                                     </tr>
                                    <%
                                        while(rs.next())
                                        {
                                            %>
                                            <tr>
                                                <td><%=rs.getString("id")%></td>
                                                <td><%=rs.getString("username")%></td>
                                                
                                                <td><%=rs.getString("filename")%></td>
                                                <td><%=rs.getString("token")%></td>
                                                <td><%=rs.getString("date")%></td>
                                                              </tr>
                                        <%}
}
catch(Exception e)
{
out.println(e);
}
%>                 </table></center>
        </div>  
        <center>
<a href="CloudHome.jsp">BACK</a>
        </center>
    </section>

    <section class="events" id="events-section">
        <div class="content-wrapper">
            <div class="inner-container container-fluid">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-heading">
                            <div class="filter-categories">
                                <ul class="project-filter">
                                    <li class="filter" data-filter="all"><a href="index.html"><span>Home</span></a></li>
                                    <li class="filter" data-filter="design"><a href="DataOwner.jsp"><span>Data Owner</span></a></li>
                                    <li class="filter" data-filter="start" ><a href="DataUser.jsp"><span>Data User</span></a></li>
                                    <li class="filter" data-filter="web"><a href="Cloud.jsp"><span>Cloud</span></a></li>
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