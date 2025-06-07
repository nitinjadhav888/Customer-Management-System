<%@page import="java.sql.*"%> 

<%
    String request_date = request.getParameter("request_date");
    String request_time = request.getParameter("request_time");
    String request_details = request.getParameter("request_details");
    String request_priority = request.getParameter("priority");
    String request_raised_by = request.getParameter("raised_by");

    try {
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB", "root", "");
        Statement st = conn.createStatement();

        String myquery = "INSERT INTO request_raise_emp (REQUEST_DATE, REQUEST_TIME, REQUEST_DETAILS, REQUEST_PRIORITY, REQUEST_RAISED_BY) VALUES ('" 
                        + request_date + "', '" + request_time + "', '" + request_details + "', '" + request_priority + "', '" + request_raised_by + "')";
        
        int i = st.executeUpdate(myquery);

        response.sendRedirect("Display_Request_Raise_Emp.jsp");
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
        e.printStackTrace();
    }
%>
