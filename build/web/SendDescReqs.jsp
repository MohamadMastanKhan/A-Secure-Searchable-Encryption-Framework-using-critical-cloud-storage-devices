<%-- 
    Document   : SendDescReqs
    Created on : Jan 3, 2020, 4:22:29 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String username=(String)session.getAttribute("username");
String eamil=(String)session.getAttribute("email");
String id=request.getParameter("id");

String owner=request.getParameter("owner");
String filename=request.getParameter("filename");

try{
    int count=0;
    
    ResultSet r=Queries.getExecuteQuery("select * from desreq where username='"+username+"'and filename='"+filename+"'and owner='"+owner+"'");
    while(r.next()){
      count=r.getInt(1);  
    }
    if(count==0){
   String query="insert into desreq values(null,'"+id+"','"+eamil+"','"+username+"','"+owner+"','"+filename+"','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Request Sent Successfully");
        window.location="SearchFile.jsp";
</script>
<%    
    }else{
 %>
    <script type="text/javascript">
        window.alert("Request Sent Failed");
        window.location="SearchFile.jsp";
</script>
<%  
}
}else{
%>
    <script type="text/javascript">
        window.alert("Request Already Sent For this File");
        window.location="SearchFile.jsp";
</script>
<%
}
    
    
    
    
}catch(Exception e){
    out.println(e);
}



%>