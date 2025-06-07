<%@page import="java.sql.*"%> 

<% 
    int idx = Integer.parseInt(request.getParameter("id")); // Hidden form Id
    
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String phone_no = request.getParameter("phone_no");
    String email = request.getParameter("email");
    String pan_card = request.getParameter("pan_card");
    String aadhar_card = request.getParameter("aadhar_card");
    String cash_amt = request.getParameter("cash_amt");
    String loan_amt = request.getParameter("loan_amt");
    String dt = request.getParameter("date");
    String entry_by = request.getParameter("entry_by");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");

        Statement st = conn.createStatement();

        // Fix: Enclosed `date` in backticks (`date`) to prevent syntax errors
        String myquery = "UPDATE sales_entry_agent SET fname='" + fname + "', lname='" + lname + "', phone_no='" + phone_no + "', email='" + email + "', pan_card='" + pan_card + "', aadhar_card='" + aadhar_card + "', cash_amount='" + cash_amt + "', loan_amount='" + loan_amt + "', `date`='" + dt + "', entry_by='" + entry_by + "' WHERE sales_id=" + idx;

        int i = st.executeUpdate(myquery);

        response.sendRedirect("Display_Sales_Agt.jsp");

    } catch (Exception e) {
        System.out.print(e);
    }
%>
