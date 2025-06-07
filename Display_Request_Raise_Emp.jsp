<%@page import="java.sql.*"%> 
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <script>
            function getConfirmation() {
                var res = confirm("Are You Sure to delete the data?");
                if (res == true) {
                    window.location.href = "Display_Request_Raise_Emp.jsp"; 
                } else {
                    return false;
                }
            }
        </script>

        <style>
            body {
                background-color: #ECF0F1;
                color: #2C3E50;
            }
            .jumbotron {
                background-color: #2C3E50;
                padding: 10px;
                text-align: center;
                color: white;
                border-radius: 10px;
                box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.2);
            }
            .container-fluid {
                margin-top: 20px;
            }
            .table-responsive {
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.1);
            }
            th {
                background-color: #2980B9 !important;
                color: white;
                text-align: center;
            }
            tr:hover {
                background-color: #D6EAF8;
                cursor: pointer;
            }
            a {
                text-decoration: none;
                font-size: 17px;
                color: white;
            }
            .btn-info {
                background-color: #3498DB;
                border-color: #2980B9;
            }
            .btn-success {
                background-color: #27AE60;
                border-color: #229954;
            }
            .btn-danger {
                background-color: #E74C3C;
                border-color: #C0392B;
            }
              .welcome
                {
                   margin-right: 1000px;
                   color: orange;
                    display: inline-block;
                    
                }
                
               .logout
               {
                   margin: 5px;
                   float: right;
                   
                  
               }
             .logout a {
            text-decoration: none;
            color: white;
            background: #e74c3c;
            padding: 10px 15px;
            border-radius: 5px;
            transition: 0.3s;
        }

        .logout a:hover {
            background: #c0392b;
        }
        </style>
    </head>
    <body>
        <div class="jumbotron">
            <h2 style="color: gold"> Skyline CRM </h2>
            <div class="welcome">
                <h2>Welcome <% out.print(session.getAttribute("session_uname")); %></h2>
            </div> 
            <div class="logout">
                <h2><a href="index.html">Log Out</a></h2>
            </div>
            <div class="logout">
                <h2><a href="EmployeeDB.jsp">Go To Dashboard</a></h2>
            </div>
        </div>

        <div class="container-fluid">
            <form>
                <h3 class="text-center">Request Raise Details</h3>
                <div class="row">
                    <div class="col-sm-4">
                        <a href="RequestForm_Emp.jsp" class="btn btn-info">
                            <span class="glyphicon glyphicon-plus"></span> Add New Request
                        </a>
                    </div>
                    <div class="col-sm-4">
                        <input type="text" name="search_req_data" class="form-control"> 
                    </div>
                    <div class="col-sm-2">
                        <button class="btn btn-info" name="search_btn">Search Record <span class="glyphicon glyphicon-search"></span></button>
                    </div>
                </div>
            </form>

            <center>
                <table class="table table-bordered">
                    <tr bgcolor="gold">
                        <th>Sr No</th>
                        <th>Request ID</th>
                        <th>Request Date</th>
                        <th>Request Time</th>
                        <th>Request Details</th>
                        <th>Request Priority</th>
                        <th>Request Raised By</th>
                        <th colspan="2" class="text-center">Action</th>
                    </tr>
                    
                    <% 
                        String x_btn = request.getParameter("search_btn");
                        String sql;

                        if (x_btn != null) {
                            String fetch_record = request.getParameter("search_req_data");
                            sql = "SELECT * FROM Request_Raise_Emp WHERE request_id = '"+fetch_record+"' OR request_date = '"+fetch_record+"' OR request_priority = '"+fetch_record+"' OR request_raised_by = '"+fetch_record+"'";

                            if (fetch_record.equals("")) {
                                out.println("<tr><td colspan='7' align='center' ><h3>Record Not Found</h3></td><tr>");
                            }
                        } else {
                            sql = "SELECT * FROM Request_Raise_Emp ORDER BY request_id DESC";
                        }
                    %>

                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB", "root", "");
                            Statement st = conn.createStatement();
                            ResultSet rs = st.executeQuery(sql);
                            
                            int x = 101;
                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= x %></td>
                        <td><%= rs.getInt("request_id") %></td>
                        <td><%= rs.getString("request_date") %></td>
                        <td><%= rs.getString("request_time") %></td>
                        <td><%= rs.getString("request_details") %></td>
                        <td><%= rs.getString("request_priority") %></td>
                        <td><%= rs.getString("request_raised_by") %></td>
                        <td class="text-center">
                            <a href="Delete_Request_Emp.jsp?id=<%= rs.getInt("request_id") %>" class="btn btn-danger" onclick="return getConfirmation()">
                                <span class="glyphicon glyphicon-trash"></span> Delete
                            </a>
                        </td>
                        <td>
                            <a href="Update_Request_Emp.jsp?id=<%= rs.getInt("request_id") %>" class="btn btn-success">
                                <span class="glyphicon glyphicon-pencil"></span> Update
                            </a>
                        </td>
                    </tr>
                    <%  
                            x++;
                            }
                            conn.close();
                        } catch (Exception e) {
                            System.out.print(e);
                        }
                    %>
                </table>
            </center>
        </div>
    </body>
</html>
