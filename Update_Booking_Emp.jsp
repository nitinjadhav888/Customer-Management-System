<%@page import="java.sql.*"%>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
</script>

	<style type="text/css">
		body{
			background-image: url(pics/Booking.jpg);
			background-size: cover;
		}
		.row
		{
			width: 90%;
			margin-left: 5%;

		}

		.formclass
	{
		width: 50%;
		background: rgba(0, 0, 0, 0.5);
		color: gold;
		margin-left: 25%;
		margin-top: 10%;
		box-shadow: 1px 3px 3px 2px skyblue;
	}
	
	</style>
</head>
<body>

	<div class="container">
            
              <%
        //get the userid from the id and display all data of that id inside the form
        int idx=Integer.parseInt(request.getParameter("id"));
  
  try
  {
      Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement(); 
        
        String sql ="select*from booking where custid="+idx;
        
        ResultSet rs = st.executeQuery(sql);
        
        int x=101;
        while(rs.next())
        {
             //add form code here
          %>
            <form name="f1" class="well formclass" method="post" action="Update_Booking_Process_Emp.jsp">
                 <input type="hidden" name="id" value="<%=rs.getInt("CUSTID")%>">
		<h2 class="text-center"><font color="gold"> Booking Entry</font></h2>

		<div class="form-group">
			<div class="row">

					<input type="date" name="dt" value="<%=rs.getString("DATE")%>" class="form-control">
		   </div>
		</div>

		<div class="form-group">
			<div class="row">

					<input type="text" name="fname" value="<%=rs.getString("FNAME")%>" placeholder="First Name" class="form-control">
		   </div>
		</div>


		<div class="form-group">
			<div class="row">
					<input type="text" name="lname" value="<%=rs.getString("LNAME")%>" placeholder="Last Name" class="form-control">
				
			</div>
		</div>

		<div class="form-group">
			<div class="row">
					<input type="number" name="phone_no" value="<%=rs.getString("PHONE_NO")%>" placeholder="Phone Number" class="form-control">
			</div>
		</div>



		<div class="form-group">
			<div class="row">
					<input type="text" name="email" value="<%=rs.getString("EMAIL")%>" placeholder="Email Id" class="form-control">
			</div>
		</div>

		

	

		<div class="form-group">
			<div class="row">
					<input type="text" name="booking_amt" value="<%=rs.getString("BOOKING_AMT")%>" placeholder="Booking Amount" class="form-control">
			</div>
		</div>


       

        <div class="form-group">
			    <div class="row">
                                <input type="text" name="entry_by" value="<%=rs.getString("ENTRY_BY")%>" placeholder="Entry_By" value="<% out.print(session.getAttribute("session_uname")); %>" class="form-control" readonly>
                </div>
		</div>

		
		

		 
       

		<div class="form-group">
			<div class="row">
				<div class="col-sm-6" align="center">
					<button type="submit" class="btn btn-info">Submit Booking</button>
				</div>

				<div class="col-sm-6" >
					<button type="reset" class="btn btn-danger">Reset</button>
				</div>
			</div>
		</div>
	</form>
                
                     <%

        }
  }
  
  catch(Exception e)
  {
       System.out.print(e);
  }
    %>
 </div>

</body>
</html>