<%-- 
    Document   : VerifyKeyAction
    Created on : Jan 4, 2020, 11:01:54 AM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    String username=(String)session.getAttribute("username");
    String token=request.getParameter("token");
     String fid=request.getParameter("fid");
     String filename=request.getParameter("filename");
     
     String sql="select * from file where id='"+fid+"' and token='"+token+"'";
     ResultSet r=Queries.getExecuteQuery(sql);
      
     if(r.next()){
     Queries.getExecuteUpdate("insert into transaction values(null,'"+username+"','"+r.getString("filename")+"','Download',now())");
                                          
       response.sendRedirect("Download?"+filename);  
       
     }else{
       
       Queries.getExecuteUpdate("insert into attacker values(null,'"+username+"','"+filename+"','"+token+"',now())");
       %>
       <script type="text/javascript">
           window.alert("Token Verifycation Failed");
           window.location="ViewUserDecryptKeyStatus.jsp";
       </script>
       <%
     }
     
    
}catch(Exception e){
 out.println(e);   
}




%>