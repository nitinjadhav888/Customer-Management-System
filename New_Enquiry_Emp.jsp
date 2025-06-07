<%@page import="java.sql.*"%> 

<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String phone_no=request.getParameter("phone_no");
    String email=request.getParameter("email");
    String min_budget=request.getParameter("min_bgt");
    String max_budget=request.getParameter("max_bgt");
    String type_of_property=request.getParameter("property");
    String sugg_cost=request.getParameter("sg_cost");
    String status=request.getParameter("status");
    
    try
    {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement();

       int i=st.executeUpdate("insert into enquiry (FNAME,LNAME,PHONE_NO,EMAIL,MIN_BUDGET,MAX_BUDGET,TYPE_OF_PROPERTY,SUGG_COST,STATUS)values('"+fname+"','"+lname+"','"+phone_no+"','"+email+"','"+min_budget+"','"+max_budget+"','"+type_of_property+"','"+sugg_cost+"','"+status+"')");
       
       response.sendRedirect("Display_Enquiry_Emp.jsp");
    }
    
    catch(Exception e)
    {
        System.out.print(e);
    }



%>