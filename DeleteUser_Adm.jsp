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
            
            a{
                text-decoration: none;
                font-size: 17px;
                color: white;
            }
            .jumbotron
            {
                background-color: black;
                padding: 10px;
            }
            table
            {
                width: 100%;
                background-color: black;
                color: white;
            }
        </style>
        
    </head>
    <body>
        <div class="jumbotron">
            <h2 style="color: gold"> Skyline CRM </h2>
           
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
               <td class="text-center"><a href="Delete_User_Process_Adm.jsp?id=<%=rs.getInt("custid")%>" class="btn btn-danger" onclick="return getConfirmation()">
                       <span class="glyphicon glyphicon-trash"></span> Delete
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

