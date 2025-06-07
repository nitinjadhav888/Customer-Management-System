<%@page import="java.sql.*"%> 

                 
<%
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    String type_of_user=request.getParameter("user");
    
 try
    {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        
        
        String sql ="select * from user where username= ? and password= ? and type_of_user= ?";
        PreparedStatement st=conn.prepareStatement(sql);
        st.setString(1,uname);
         st.setString(2,pass);
          st.setString(3,type_of_user);
         
        
        ResultSet rs = st.executeQuery();
        
         if(uname.equals("Admin") && pass.equals("Admin123") && type_of_user.equals("Admin"))
        {
            
            response.sendRedirect("Admin_Adm.jsp");
        }
       else if(rs.next())
       {
            String toc = rs.getString("type_of_user");
            if(toc.equals("Employee"))
            {
               response.sendRedirect("EmployeeDB.jsp");
            }
            else if(toc.equals("Agent"))
            {
               response.sendRedirect("AgentDB.jsp");
            }
            else
            {
                response.sendRedirect("index.html");
            }
            
       }
         else
       {
           response.sendRedirect("LoginFail_Adm.jsp");
       }
        
       
     
         
    }
    catch(Exception e)
    {
        System.out.print(e);
     
    }
%>
                       
