<%@page import="java.sql.*"%> 

<%
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String phoneno=request.getParameter("phone_no");
    String email=request.getParameter("email");
    
    String uname=request.getParameter("username");
    String pass=request.getParameter("pass");
    String type_of_user=request.getParameter("type_of_user");
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement();
      

        int i=st.executeUpdate("insert into user(fname,lname,phone_no,email,username,password,type_of_user)values('"+fname+"','"+lname+"','"+phoneno+"','"+email+"','"+uname+"','"+pass+"','"+type_of_user+"')");

        
        response.sendRedirect("DisplayUser_Adm.jsp");


    }
     catch(Exception e)
     {
         System.out.print(e);
     }

%>