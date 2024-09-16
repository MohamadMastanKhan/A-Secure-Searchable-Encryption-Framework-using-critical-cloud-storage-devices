/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

import com.database.DbConnection;
import com.database.Queries;
import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xml.internal.security.utils.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@MultipartConfig(maxFileSize=15*1024*1024)
public class UploadAction extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            MultipartRequest mr=new MultipartRequest(request,"C://cloud//");
            
            HttpSession session=request.getSession();
            String username=(String)session.getAttribute("username");
            
            Random r=new Random();
            int i=r.nextInt(1000000-40000)+50000;
            String token=""+i;
            String fname=mr.getParameter("filename");
            String key=mr.getParameter("key");
            
            File f=mr.getFile("file");
            
            String filename=f.getName();
            
            BufferedReader br=new BufferedReader(new FileReader(f));
            String temp=null;
            StringBuffer sb=new StringBuffer();
            
            while((temp=br.readLine())!=null){
               sb.append(temp);
            }
            String data=sb.toString();
            // secretkey generating
            
                                KeyGenerator keyGen = KeyGenerator.getInstance("AES");
                                keyGen.init(128);
                                SecretKey secretKey = keyGen.generateKey();
                                System.out.println("secret key:" + secretKey);
                                //converting secretkey to String
                                byte[] be = secretKey.getEncoded();//encoding secretkey
                                String skey = Base64.encode(be);
                                System.out.println("converted secretkey to string:" + skey);
                                String cipher = new encryption().encrypt(data, secretKey);
                                
                             Connection con=DbConnection.getConnection();
                             PreparedStatement pst=con.prepareStatement("insert into file values(null,'"+username+"','"+fname+"','"+filename+"','"+key+"','"+token+"','"+data+"','"+cipher+"','"+skey+"',now(),'waiting')");
                            int is=pst.executeUpdate();
                               if(is>0){
                                   
                                   Queries.getExecuteUpdate("insert into transaction values(null,'"+username+"','"+filename+"','upload',now())");
                                
                                   response.sendRedirect("UploadFile.jsp?msg=success");
                               }else{
                                  response.sendRedirect("UploadFile.jsp?msg=failed");  
                               }
                     
        }catch(Exception e){
        out.println(e);    
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
