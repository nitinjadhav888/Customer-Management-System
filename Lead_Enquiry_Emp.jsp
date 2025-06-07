<%@page import="java.sql.*"%> 
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
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
            table {
                width: 100%;
                color: #2C3E50;
                background-color: white;
                border-radius: 8px;
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
            a{
                text-decoration: none;
                
                color: skyblue;
            }
          
        </style>
    </head>
    <body>
        
        
       
        <div class="jumbotron">
            <h2 style="color: gold"> Skyline CRM </h2>
                    <div class="welcome">
                        <h2>Welcome  <% out.print(session.getAttribute("session_uname")); %></h2>
                    </div> 
                    <div class="logout">
                        <h2><a href="index.html">Log Out</a></h2>
                    </div>
                    <div class="logout">
                        <h2><a href="EmployeeDB.jsp">Go To Dashboard</a></h2>
                    </div>
           
        </div>
        <div class="container-fluid">
                    <h3 class="text-center">Enquiry Details</h3>
                    
                    <a href="New_Enquiry_Form_Emp.jsp" class="btn btn-info">
                        <span class="glyphicon glyphicon-plus"></span>  New Enquiry
                    </a>
                    <center>
                        <table class="table table-bordered">
                            <tr bgcolor="gold">
                                <th>Sr No</th>
                                <th>Enq Id</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Phone No</th>
                                <th>Email</th>
                                <th>Min-Budget</th>
                                <th>Max-Budget</th>
                                <th>Property</th>
                                <th>Sugg Cost </th>
                                 <th>Status </th>
                                  
                                <th colspan="2" class="text-center">Action</th>
                            </tr>
                            
<%
 try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement(); 
        
        String sql ="select * from enquiry where status = 'Lead'";
        
        ResultSet rs = st.executeQuery(sql);
        
        int x=101;
        while(rs.next())
        {
           %>
           <tr>
               <td><%=(x)%></td>
               <td><%=rs.getInt("ENQID")%></td>
               <td><%=rs.getString("FNAME")%></td>
               <td><%=rs.getString("LNAME")%></td>
               <td><%=rs.getString("PHONE_NO")%></td>
               <td><%=rs.getString("EMAIL")%></td>
               <td><%=rs.getString("MIN_BUDGET")%></td>
               <td><%=rs.getString("MAX_BUDGET")%></td>
               <td><%=rs.getString("TYPE_OF_PROPERTY")%></td>
               <td><%=rs.getString("SUGG_COST")%></td>
               <td><%=rs.getString("STATUS")%></td>
              
                <td class="text-center"><a href="Delete_Enquiry_Emp.jsp?id=<%=rs.getInt("enqid")%>" class="btn btn-danger" onclick="return getConfirmation()">
                       <span class="glyphicon glyphicon-trash"></span> Delete
                   </a>
               </td>
               <td><a href="Update_Enquiry_Emp.jsp?id=<%=rs.getInt("enqid")%>" class="btn btn-success">
                       <span class="glyphicon glyphicon-pencil"></span> Update
                   </a>
               </td>
             </tr>
             
             <%
             x++;
        }
         conn.close();
    }
    catch(Exception e)
    {
        System.out.print(e);
     
    }
%>
                        </table>
                    </center>
        </div>
    </body>
</html>


