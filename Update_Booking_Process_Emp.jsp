<%@page import="java.sql.*"%> 

<% 
    int idx=Integer.parseInt(request.getParameter("id"));//Hidden form Id
    
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
        
        String myquery="Update booking set date='"+dt+"',fname='"+fname+"',lname='"+lname+"',phone_no='"+phone_no+"',email='"+email+"',booking_amt='"+booking_amt+"',entry_by='"+entry_by+"'where custid="+idx;
      

        int i=st.executeUpdate(myquery);

        
        response.sendRedirect("Display_Booking_Emp.jsp");


    }
     catch(Exception e)
     {
         System.out.print(e);
     }

%>
