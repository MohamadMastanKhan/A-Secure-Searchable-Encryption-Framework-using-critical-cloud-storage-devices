<%-- 
    Document   : OActivate
    Created on : Dec 27, 2019, 12:39:14 PM
    Author     : Venkat Sweety
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String username=request.getParameter("username");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_searchable","root","root");
   Statement st=con.createStatement();
   int i=st.executeUpdate("update owner set status='Activated' where username='"+username+"'");
   if(i>0)
   {
       %>
       <script type="text/javascript">
           window.alert("Data Owner Activated SucessFully");
           window.location="CloudHome.jsp";
           </script>
       <% 
   
}
else
{
%>
       <script type="text/javascript">
           window.alert("Data Owner Activation Failed");
           window.location="CloudHome.jsp";
           </script>
       <% 
    }
}
    catch(Exception e)
    {
        out.println(e);
    }
    %>