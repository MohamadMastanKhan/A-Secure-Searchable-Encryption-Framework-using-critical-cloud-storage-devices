
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String fid=request.getParameter("fid");
String id=request.getParameter("id");
String deckey=request.getParameter("deckey");
String filename=request.getParameter("filename");
try{
   String query="select * from desreq where fid='"+fid+"'and id='"+id+"'and deskey='"+deckey+"'"; 
   ResultSet r=Queries.getExecuteQuery(query);
   if(r.next()){
  
   response.sendRedirect("ViewDesFile.jsp?fid="+fid+"&filename="+filename); 
 
   }   else{
       %>
       <script type="text/javascript">
           window.alert("Verifycation Failed");
           window.location="VerifyKey.jsp";
       </script>   
       <%
   }
}catch(Exception e){
   out.println(e); 
}

%>