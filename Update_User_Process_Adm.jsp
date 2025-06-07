<%@page import="java.sql.*"%> 

<% 
    int idx=Integer.parseInt(request.getParameter("id"));//Hidden form Id
    
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
        
        String myquery="Update user set fname='"+fname+"',lname='"+lname+"',phone_no='"+phoneno+"',email='"+email+"',username='"+uname+"',password='"+pass+"',type_of_user='"+type_of_user+"'where custid="+idx;
      

        int i=st.executeUpdate(myquery);

        
        response.sendRedirect("DisplayUser_Adm.jsp?success=1");


    }
     catch(Exception e)
     {
         System.out.print(e);
     }

%>
