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
                  window.location.href="DisplayEnquiry_Emp.jsp"; 
               }
               else
               {
                   return false;
               }
            }//end of function
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
                    padding: 15px;
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
                    <div class="welcome logout">
                        <h4 ><a href="EmployeeDB.jsp">Go To Dashboard</a></h4>
                    </div>
           
        </div>
        <div class="container-fluid">
            <form>
                    <h3 class="text-center">Enquiry Details</h3>
                    <div class="row">
                        <div class="col-sm-4">
                    <a href="New_Enquiry_Form_Emp.jsp" class="btn btn-info">
                        <span class="glyphicon glyphicon-plus"></span>  Add New Enquiry
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
                                  
                               
                            </tr>
                            
<% 
                            String x_btn =request.getParameter("search_btn");
                            
                            String sql;
                            
                            if(x_btn!=null)
                            {
                                String fetch_record= request.getParameter("search_req_data");
                                 sql ="select * from enquiry where enqid = '"+fetch_record+"' or fname='"+fetch_record+"' or lname='"+fetch_record+"'or phone_no='"+fetch_record+"'or email='"+fetch_record+"'or min_budget='"+fetch_record+"' or max_budget='"+fetch_record+"' or type_of_property='"+fetch_record+"'or sugg_cost='"+fetch_record+"'or status='"+fetch_record+"'";
                                if(fetch_record.equals(""))
                                {
                                    out.println("<tr><td colspan='11' align='center' ><h3>Record Not Found</h3></td><tr>");
                                }
                                
                            }
                            else
                            {
                                 sql ="select * from enquiry where type_of_property= 'Bangalows'";
        
                            }
%>
                            
<%
 try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement(); 
        
       // String sql ="select * from enquiry order by ENQID desc";
        
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

