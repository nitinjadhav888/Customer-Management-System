<%@page import="java.sql.*"%>

<%
  int idx=Integer.parseInt(request.getParameter("id"));
  
  try
  {
      Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement(); 
        
        int i=st.executeUpdate("delete from booking_agent where custid="+idx);
        response.sendRedirect("Display_Booking_Agt.jsp");
  }
  
  catch(Exception e)
  {
       System.out.print(e);
  }
    %>
