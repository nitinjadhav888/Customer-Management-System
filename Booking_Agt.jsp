<%@page import="java.sql.*"%> 

<%
     String dt=request.getParameter("dt");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String phone_no=request.getParameter("phone_no");
    String email=request.getParameter("email");
    String booking_amt=request.getParameter("booking_amt");
    String entry_by=request.getParameter("entry_by");
   
    
    try
    {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement();
      

       int i=st.executeUpdate("insert into booking_agent (DATE,FNAME,LNAME,PHONE_NO,EMAIL,BOOKING_AMT,ENTRY_BY)values('"+dt+"','"+fname+"','"+lname+"','"+phone_no+"','"+email+"','"+booking_amt+"','"+entry_by+"')");
       
       
       response.sendRedirect("Display_Booking_Agt.jsp");
    }
    
    catch(Exception e)
    {
        System.out.print(e);
    }



%>