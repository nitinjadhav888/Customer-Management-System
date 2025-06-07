<%@page import="java.sql.*"%> 
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
	</script>
        
       
        
        <style>
             .brandname
                {
                    background: rgba(0, 0, 0, 0.8);
                    margin-bottom: 10px;
                    padding: 2px;
                }
                
                
                .welcome
                {
                   
                    color: white;
                    display: inline-block;
                    
                   
                }
                
               .logout
               {
                   float: right;
                   
                  
               }
            a{
                text-decoration: none;
                font-size: 27px;
                color: red;
            }
            .container-fluid
            {
                width: 100%;
            }
           
            table
            {
                width: 100%;
                
                
            }
        </style>
        
    </head>
    <body>
        
        
       
        <div class="jumbotron brandname">
            <h2 style="color: gold"> Skyline CRM </h2>
                    <div class="welcome">
                        <h3>Welcome  <% out.print(session.getAttribute("session_uname")); %></h3>
                    </div> 
                    <div class="welcome logout">
                        <h3 ><a href="index.html">Log Out</a></h3>
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
                               
                               
                            </tr>
                            
<%
 try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement(); 
        
        String sql ="select * from user where type_of_user= 'Employee'";
        
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

