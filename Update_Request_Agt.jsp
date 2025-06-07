<%@page import="java.sql.*"%>
<%
    // Fetch request_id from URL parameter
    String requestId = request.getParameter("id");

    // Database connection
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB", "root", "");

    Statement stmt = conn.createStatement();
    String sql = "SELECT * FROM Request_Raise_Agent WHERE request_id = '" + requestId + "'";
    ResultSet rs = stmt.executeQuery(sql);

    String request_date = "", request_time = "", request_details = "", request_priority = "", request_raised_by = "";

    if (rs.next()) {
        request_date = rs.getString("request_date");
        request_time = rs.getString("request_time");
        request_details = rs.getString("request_details");
        request_priority = rs.getString("request_priority");
        request_raised_by = rs.getString("request_raised_by");
    }

    conn.close();
%>

<html>
<head>
    <title>Update Request</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="text-center">Update Request</h2>
        <form action="Update_Process_Request_Agt.jsp" method="post">
            <input type="hidden" name="request_id" value="<%= requestId %>">

            <div class="form-group">
                <label>Request Date:</label>
                <input type="date" class="form-control" name="request_date" value="<%= request_date %>" required>
            </div>

            <div class="form-group">
                <label>Request Time:</label>
                <input type="time" class="form-control" name="request_time" value="<%= request_time%>" required>
            </div>

            <div class="form-group">
                <label>Request Details:</label>
                <textarea class="form-control" name="request_details" required><%= request_details %></textarea>
            </div>

            <div class="form-group">
                <label>Request Priority:</label>
                <select class="form-control" name="request_priority" required>
                    <option value="High" <%= request_priority.equals("High") ? "selected" : "" %>>High</option>
                    <option value="Medium" <%= request_priority.equals("Medium") ? "selected" : "" %>>Medium</option>
                    <option value="Low" <%= request_priority.equals("Low") ? "selected" : "" %>>Low</option>
                </select>
            </div>

            <div class="form-group">
                <label>Request Raised By:</label>
                <input type="text" class="form-control" name="request_raised_by" value="<%= request_raised_by %>" readonly>
            </div>

            <button type="submit" class="btn btn-success">Update Request</button>
            <a href="Display_Request_Raise_Agt.jsp" class="btn btn-danger">Cancel</a>
        </form>
    </div>
</body>
</html>
