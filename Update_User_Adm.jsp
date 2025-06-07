<%@page import="java.sql.*"%>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
</script>

	<style type="text/css">
		body{
			background-image: url(pics/loginpagebackground.jpg);
			background-size: cover;
		}

		.formclass
	{
		width: 50%;
		background: rgba(0, 0, 0, 0.2);
		color: gold;
		margin-left: 25%;
		margin-top: 10%;
		box-shadow: 1px 3px 3px 2px skyblue;
	}
	label{
		margin-left: 5%;
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
        
        String sql ="select*from user where custid="+idx;
        
        ResultSet rs = st.executeQuery(sql);
        
        int x=101;
        while(rs.next())
        {
             //add form code here
          %>
          
          <form name="f1" class="well formclass" method="post" action="Update_User_Process_Adm.jsp">
                 <input type="hidden" name="id" value="<%=rs.getInt("CUSTID")%>">
	
		<h1 class="text-center"><font color="gold">New User Registration</font></h1>
		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>First Name</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="fname" placeholder="First Name" value="<%=rs.getString("FNAME")%>" class="form-control">
				</div>
			</div>
		</div>


		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Last Name</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="lname" placeholder="Last Name" value="<%=rs.getString("LNAME")%>" class="form-control">
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Phone Number</label>
				</div>
				<div class="col-sm-8">
					<input type="number" name="phone_no" placeholder="Phone Number" value="<%=rs.getString("PHONE_NO")%>" class="form-control">
				</div>
			</div>
		</div>



		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Email Id</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="email" placeholder="Email Id" value="<%=rs.getString("EMAIL")%>" class="form-control">
				</div>
			</div>
		</div>

		

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Username</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="username" placeholder="username" value="<%=rs.getString("USERNAME")%>" class="form-control">
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Password</label>
				</div>
				<div class="col-sm-8">
					<input type="password" name="pass" placeholder="Password" value="<%=rs.getString("PASSWORD")%>" class="form-control">
					
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label >Type Of User</label>
				</div>
				<div class="col-sm-8">
					
		<input type="radio" name="type_of_user" value="Employee" <%=rs.getString("TYPE_OF_USER").equals("Employee")? "checked":""%>> Employee
	      <input type="radio" name="type_of_user" value="Agent"<%=rs.getString("TYPE_OF_USER").equals("Agent")? "checked":""%>> Agent

					
				</div>
			</div>
		</div>

		 
       

		<div class="form-group">
			<div class="row">
				<div class="col-sm-6" align="center">
					<button type="submit" class="btn btn-info">Submit</button>
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