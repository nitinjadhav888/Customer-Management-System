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
            <form method="post" action="Display_PettyCash_Emp.jsp">
                    <h2 class="text-center">Client Purchase Details</h2>
                    <div class="row">
                        <div class="col-sm-4">
                    <a href="PettyCash_Form_Emp.jsp" class="btn btn-info">
                        <span class="glyphicon glyphicon-plus"></span> New Purchase
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
                                <th>Purchase Id</th>
                                 <th>Purchase Date</th>
                                <th>Department Name</th>
                                <th>Product Name</th>
                                <th>Product Rate</th>
                                <th>Product Qty</th>
                                <th>Product Bill</th>
                                <th>Employee Name</th>
                               
                                  
                                <th colspan="2" class="text-center">Action</th>
                            </tr>
<% 
                            String x_btn =request.getParameter("search_btn");
                            
                            String sql;
                            
                            if(x_btn!=null)
                            {
                                String fetch_record= request.getParameter("search_req_data");
                                 sql ="select * from purchase where purchaseid = '"+fetch_record+"' or p_date='"+fetch_record+"' or d_name='"+fetch_record+"' or p_name='"+fetch_record+"' or p_rate='"+fetch_record+"' or p_qty='"+fetch_record+"' or p_bill='"+fetch_record+"' or emp_name='"+fetch_record+"'";
                              
                                 if(fetch_record.equals(""))
                                {
                                    out.println("<tr><td colspan='9' align='center' ><h3>Record Not Found</h3></td><tr>");
                                    
                                }
                                
                            }
                            else
                            {
                                
                                 sql ="select * from PURCHASE order by PURCHASEID desc";
                            }
%>                             
                            
<%
 try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement(); 
        
      //  String sql ="select * from PURCHASE order by PURCHASEID desc";
        
        ResultSet rs = st.executeQuery(sql);
        
        int x=101;
        while(rs.next())
        {
           %>
           <tr>
               <td><%=(x)%></td>
               <td><%=rs.getInt("PURCHASEID")%></td>
               <td><%=rs.getString("P_DATE")%></td>
               <td><%=rs.getString("D_NAME")%></td>
               <td><%=rs.getString("P_NAME")%></td>
               <td><%=rs.getString("P_RATE")%></td>
               <td><%=rs.getString("P_QTY")%></td>
               <td><%=rs.getString("P_BILL")%></td>
               <td><%=rs.getString("EMP_NAME")%></td>
              
               <td class="text-center"><a href="Delete_Purchase_Emp.jsp?id=<%=rs.getInt("purchaseid")%>" class="btn btn-danger" onclick="return getConfirmation()">
                       <span class="glyphicon glyphicon-trash"></span> Delete
                   </a>
               </td>
               <td><a href="Update_Purchase_Emp.jsp?id=<%=rs.getInt("purchaseid")%>" class="btn btn-success">
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

