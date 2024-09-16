<%-- 
    Document   : DataOwnerRegAction
    Created on : Dec 26, 2019, 6:21:05 PM
    Author     : Venkat Sweety
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String location=request.getParameter("location");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_searchable","root","root");
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select count(*) from user where username='"+username+"'");
   while(rs.next())
   {
       int count=rs.getInt(1);
       if(count==0)
       {
           int i=st.executeUpdate("insert into user values('"+fname+"','"+lname+"','"+email+"','"+mobile+"','"+location+"','"+username+"','"+password+"','Waiting')");
           if(i>0)
           {
               %>
               <script type="text/javascript">
                   window.alert("Data User Registration Completed....");
                   window.location="DataUser.jsp";
                   </script>
               <%
           }
 %>
               <script type="text/javascript">
                   window.alert("Data User Registration Faild....");
                   window.location="DataUser.jsp";
                   </script>
               <%
       }
 %>
               <script type="text/javascript">
                   window.alert("Data User Alredy Having Account With this Username..");
                   window.location="DataUserReg.jsp";
                   </script>
               <%
   }
%>
               <script type="text/javascript">
                   window.alert("Data User Alredy Having Account With this Username..");
                   window.location="DataOwnerReg.jsp";
                   </script>
               <%
}
catch(Exception e)
{
    out.println(e);
}
    
    
    
    
    
    %>