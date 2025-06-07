<%@page import="java.sql.*"%> 

<%
     String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String phone_no = request.getParameter("phone_no");
    String email = request.getParameter("email");
    String pan_card = request.getParameter("pan_card");
    String aadhar_card = request.getParameter("aadhar_card");
    String cash_amount = request.getParameter("cash_amount");
    String loan_amount = request.getParameter("loan_amount");
    String entry_by = request.getParameter("entry_by");
    String date = request.getParameter("date");
    
    try
    {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement();

       int i=st.executeUpdate("INSERT INTO sales_entry_agent (FNAME, LNAME, PHONE_NO, EMAIL, PAN_CARD, AADHAR_CARD, CASH_AMOUNT, LOAN_AMOUNT,DATE, ENTRY_BY) VALUES ('"+fname+"','"+lname+"','"+phone_no+"','"+email+"','"+pan_card+"','"+aadhar_card+"','"+cash_amount+"','"+loan_amount+"','"+date+"','"+entry_by+"')");
     
       response.sendRedirect("Display_Sales_Agt.jsp");
    }
    
    catch(Exception e)
    {
        System.out.print(e);
    }



%>