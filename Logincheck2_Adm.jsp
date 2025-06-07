<%@page import="java.sql.*" %>
<%

    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    String type_of_user=request.getParameter("user");
    
    //session code
    	session.setAttribute("session_uname",uname);  
                                 
    
     try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_db","root","");       
        Statement st=conn.createStatement();
        
        
        String sql="select * from user where username='"+uname+"' and password='"+pass+"' and TYPE_OF_USER='"+type_of_user+"'";
        ResultSet rs= st.executeQuery(sql);
     
    if(uname.equals("Admin") && pass.equals("Admin123")&& type_of_user.equals("Admin") )
        {
              response.sendRedirect("Admin_Adm.jsp");
        }
         
    else if(rs.next())
    {
        
        if(rs.getString("USERNAME").equals(uname) && rs.getString("PASSWORD").equals(pass) && rs.getString("TYPE_OF_USER").equals("Employee") )
        {
            response.sendRedirect("EmployeeDB.jsp");
        }
        else if(rs.getString("USERNAME").equals(uname) && rs.getString("PASSWORD").equals(pass) && rs.getString("TYPE_OF_USER").equals("Agent") )
        {
            response.sendRedirect("AgentDB.jsp");
        }
        
     }//end of rs.next()
      else
        {
            response.sendRedirect("LoginFail_Adm.jsp");   
        }
    }
    
     catch(Exception e)
     {
         out.println(e);
     }
    
   %>