<%@page import="java.sql.*"%> 
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
	</script>
        
        <script>
            function getConfirmation()
            {
               var res= confirm("Are You Sure to delete the data ?");
               if(res==true)
               {
                  window.location.href="DisplayUser_Adm.jsp"; 
               }
               else
               {
                   return false;
               }
            }//end of function
        </script>
        
       <style>
            body {
                background-color: #ECF0F1; /* Light gray for a clean background */
                color: #2C3E50; /* Darker shade for better readability */
            }
            .jumbotron {
                background-color: #2C3E50; /* Deep indigo */
                padding: 20px;
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
                background-color: #2980B9 !important; /* Cool azure */
                color: white;
                text-align: center;
            }
            tr:hover {
                background-color: #D6EAF8; /* Light pastel blue hover */
                cursor: pointer;
            }
            a {
                text-decoration: none;
                font-size: 17px;
                color: white;
            }
            .btn-info {
                background-color: #3498DB; /* Sky blue */
                border-color: #2980B9;
            }
            .btn-success {
                background-color: #27AE60; /* Emerald green */
                border-color: #229954;
            }
            .btn-danger {
                background-color: #E74C3C; /* Bright red */
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
                        <h2><a href="Admin_Adm.jsp">Go To Dashboard</a></h2>
                    </div>
           
        </div>
        <div class="container-fluid">
                    <h3 class="text-center">CRM User Details</h3>
                    
                    <a href="NewUserRegistration.html" class="btn btn-info">
                        <span class="glyphicon glyphicon-plus"></span>  Add New User
                    </a>
                    <center>
                        <table class="table table-bordered">
                            <tr bgcolor="gold">
                                <th>Sr No</th>
                                <th>Cust Id</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Phone No</th>
                                <th>Email</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Type of Users </th>
                                <th class="text-center">Action</th>
                            </tr>
                            
<%
 try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement(); 
        
        String sql ="select * from user order by custid desc";
        
        ResultSet rs = st.executeQuery(sql);
        
        int x=101;
        while(rs.next())
        {
           %>
           <tr>
               <td><%=(x)%></td>
               <td><%=rs.getInt("CUSTID")%></td>
               <td><%=rs.getString("FNAME")%></td>
               <td><%=rs.getString("LNAME")%></td>
               <td><%=rs.getString("PHONE_NO")%></td>
               <td><%=rs.getString("EMAIL")%></td>
               <td><%=rs.getString("USERNAME")%></td>
               <td><%=rs.getString("PASSWORD")%></td>
               <td><%=rs.getString("TYPE_OF_USER")%></td>
              
               <td><a href="Update_User_Adm.jsp?id=<%=rs.getInt("custid")%>" class="btn btn-success">
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

