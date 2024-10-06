<%-- 
    Document   : GenerateDecKey
    Created on : Jan 3, 2020, 4:45:55 PM
    Author     : Acer
--%>





<%@page import="com.mail.Mail"%>
<%@page import="com.database.Queries"%>
<%@page import="java.util.Base64"%>
<%@page import="java.security.PublicKey"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.security.PrivateKey"%>
<%@page import="java.security.KeyPair"%>
<%@page import="java.security.KeyPairGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

  KeyPairGenerator keyGen = KeyPairGenerator.getInstance("DSA", "SUN");

            // Initialize KeyPairGenerator.
            SecureRandom random = SecureRandom.getInstance("SHA1PRNG", "SUN");
            keyGen.initialize(1024, random);

            // Generate Key Pairs, a private key and a public key.
            KeyPair keyPair = keyGen.generateKeyPair();
            PrivateKey privateKey = keyPair.getPrivate();
            PublicKey publicKey = keyPair.getPublic();

            Base64.Encoder encoder = Base64.getEncoder();
            String pkey= encoder.encodeToString(privateKey.getEncoded());
            String pkey1=pkey.substring(5,Math.min(pkey.length(),20));
          
String id=request.getParameter("id");
String email=request.getParameter("email");
try{
    String query="update desreq set deskey='"+pkey1+"'where id='"+id+"'";
    
   int i=Queries.getExecuteUpdate(query);
   if(i>0){
       String msg="Decrypt key is: "+pkey1;
       Mail.secretMail(msg, email, email);
     %>
     <script type="text/javascript">
         window.alert("Key Generated Successfully");
         window.location="ViewDecryptKeyRequest.jsp";
     </script>
     <%
   }else{
%>
     <script type="text/javascript">
         window.alert("Key Generating Failed");
         window.location="ViewDecryptKeyRequest.jsp";
     </script>
    <%
}
    
}catch(Exception e){
  out.println(e);  
}

      
%>