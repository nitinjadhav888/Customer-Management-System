<%@page import="java.sql.*"%>

<%
  int idx=Integer.parseInt(request.getParameter("id"));
  
  try
  {
      Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement(); 
        
        int i=st.executeUpdate("delete from sales_entry_agent where sales_id="+idx);
        response.sendRedirect("Display_Sales_Agt.jsp");
  }
  
  catch(Exception e)
  {
       System.out.print(e);
  }
    %>
