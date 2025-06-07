<%@page import="java.sql.*"%>
<%
    // Fetch updated values from the form
    String request_id = request.getParameter("request_id");
    String request_date = request.getParameter("request_date");
    String request_time = request.getParameter("request_time");
    String request_details = request.getParameter("request_details");
    String request_priority = request.getParameter("request_priority");
    String request_raised_by = request.getParameter("request_raised_by");

    try {
        // Database connection
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB", "root", "");

        // Update query
        Statement stmt = conn.createStatement();
        String sql = "UPDATE Request_Raise_Emp SET request_date='" + request_date + "', request_time='" + request_time + "', request_details='" + request_details + "', request_priority='" + request_priority + "', request_raised_by='" + request_raised_by + "' WHERE request_id='" + request_id + "'";
        
        int updated = stmt.executeUpdate(sql);

        conn.close();

       response.sendRedirect("Display_Request_Raise_Emp.jsp");
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>
