<%@page import="java.sql.*"%>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
         body {
            background-image: url('pics/enquiry.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
        }
        .form-container {
            width: 50%;
            background: rgba(0, 0, 0, 0.5);
            color: white;
            margin: 8% auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 2px 4px 6px rgba(255, 255, 255, 0.3);
        }
        h2 {
            text-align: center;
            color: gold;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: none;
        }
        .btn-container {
            text-align: center;
        }
        .btn {
            margin: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            int sales_id = Integer.parseInt(request.getParameter("id"));
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB", "root", "");
                Statement st = conn.createStatement();
                String sql = "SELECT * FROM sales_entry_agent WHERE sales_id=" + sales_id;
                ResultSet rs = st.executeQuery(sql);

                while (rs.next()) {
        %>
        <form class="form-container" method="post" action="Update_Process_Sales_Agt.jsp">
            <h2>Update Sales Entry</h2>
            
            <input type="hidden" name="id" value="<%=rs.getInt("sales_id")%>">

            <div class="form-group">
                <input type="text" name="fname" value="<%=rs.getString("FNAME")%>" placeholder="First Name" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="text" name="lname" value="<%=rs.getString("LNAME")%>" placeholder="Last Name" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="number" name="phone_no" value="<%=rs.getString("PHONE_NO")%>" placeholder="Phone Number" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="email" name="email" value="<%=rs.getString("EMAIL")%>" placeholder="Email Id" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="text" name="pan_card" value="<%=rs.getString("PAN_CARD")%>" placeholder="Pan Card" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="text" name="aadhar_card" value="<%=rs.getString("AADHAR_CARD")%>" placeholder="Aadhar Card" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="number" name="cash_amount" value="<%=rs.getString("CASH_AMOUNT")%>" placeholder="Cash Amount" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="number" name="loan_amount" value="<%=rs.getString("LOAN_AMOUNT")%>" placeholder="Loan Amount" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="date" name="date" value="<%=rs.getString("DATE")%>" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="text" name="entry_by" value="<%=rs.getString("ENTRY_BY")%>" class="form-control" readonly>
            </div>
            <div class="btn-container">
                <button type="submit" class="btn btn-success">Update Sales</button>
                <button type="reset" class="btn btn-danger">Reset</button>
            </div>
        </form>
        <%
                }
                conn.close();
            } catch(Exception e)
  {
       System.out.print(e);
  }
        %>
    </div>
</body>
</html>
