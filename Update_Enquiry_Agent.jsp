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
		.row
		{
			width: 90%;
			margin-left: 5%;

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
        
        String sql ="select*from enquiry_agent where enqid="+idx;
        
        ResultSet rs = st.executeQuery(sql);
        
        int x=101;
        while(rs.next())
        {
             //add form code here
          %>
          
          <form name="f1" class="well formclass" method="post" action="Update_Enquiry_process_Agt.jsp">
                 <input type="hidden" name="id" value="<%=rs.getInt("ENQID")%>">
		<h2 class="text-center"><font color="gold"> Enquiry Details</font></h2>
		<div class="form-group">
			<div class="row">

	            <input type="text" name="fname" placeholder="First Name" value="<%=rs.getString("FNAME")%>" class="form-control">
		   </div>
		</div>


		<div class="form-group">
			<div class="row">
		  <input type="text" name="lname" placeholder="Last Name" value="<%=rs.getString("LNAME")%>" class="form-control">
				
			</div>
		</div>

		<div class="form-group">
			<div class="row">
			<input type="number" name="phone_no" placeholder="Phone Number" value="<%=rs.getString("PHONE_NO")%>" class="form-control">
			</div>
		</div>



		<div class="form-group">
			<div class="row">
		<input type="text" name="email" placeholder="Email Id" value="<%=rs.getString("EMAIL")%>" class="form-control">
			</div>
		</div>

		

		<div class="form-group">
			<div class="row">
		<input type="text" name="min_bgt" placeholder="Min-Budget" value="<%=rs.getString("MIN_BUDGET")%>"  class="form-control">
			</div>
		</div>

		<div class="form-group">
			<div class="row">
		<input type="text" name="max_bgt" placeholder="Max-Budget" value="<%=rs.getString("MAX_BUDGET")%>" class="form-control">
			</div>
		</div>


        <div class="form-group">
			<div class="row">
		 <select name="property"  class="form-control"  required>
          <option disabled selected>------ Select Type Of Property ------</option>
          <option value="5BHK" <%=rs.getString("TYPE_OF_PROPERTY").equals("5BHK")? "selected":""%> >5BHK</option>
				<option value="4BHK" <%=rs.getString("TYPE_OF_PROPERTY").equals("4BHK")? "selected":""%>>4BHK</option>
				<option value="3BHK" <%=rs.getString("TYPE_OF_PROPERTY").equals("3BHK")? "selected":""%>>3BHK</option>
				<option value="2BHK" <%=rs.getString("TYPE_OF_PROPERTY").equals("2BHK")? "selected":""%>>2BHK</option>
				<option value="1BHK" <%=rs.getString("TYPE_OF_PROPERTY").equals("1BHK")? "selected":""%>>1BHK</option>
				<option value="1RK" <%=rs.getString("TYPE_OF_PROPERTY").equals("1RKK")? "selected":""%>>1RK</option>
				<option value="Row-House" <%=rs.getString("TYPE_OF_PROPERTY").equals("Row-House")? "selected":""%>>Row-House</option>
				<opyion value="Bungalows" <%=rs.getString("TYPE_OF_PROPERTY").equals("Bungalows")? "selected":""%>>Bungalows</option>
        </select>
    </div>
</div>

        <div class="form-group">
	  <div class="row">
		<input type="text" name="sg_cost" placeholder="Suggested Cost" value="<%=rs.getString("SUGG_COST")%>" class="form-control">
           </div>
        </div>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
				    <label>Status</label>
				</div>

				<div class="col-sm-8">
					<input type="radio" name="status" value="Not Intrested" <%=rs.getString("status").equals("Not Intrested")? "checked":""%>> Not Intrested
					<input type="radio" name="status" value="Lead" <%=rs.getString("status").equals("Lead")? "checked":""%>> Lead
					<input type="radio" name="status" value="Follow Up" <%=rs.getString("status").equals("Follow Up")? "checked":""%>> Follow Up
				</div>
			</div>
		</div>
		

		 
       

		<div class="form-group">
			<div class="row">
				<div class="col-sm-6" align="center">
					<button type="submit" class="btn btn-info">Submit Enquiry</button>
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