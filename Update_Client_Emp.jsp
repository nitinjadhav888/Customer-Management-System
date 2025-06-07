<%@page import="java.sql.*"%>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
</script>

	<style type="text/css">
		body{
			background-image: url(pics/Client.jpg);
			background-size: cover;
		}

		.formclass
	{
		width: 50%;
		background: rgba(0, 0, 0, 0.5);
		color: white;
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
        
        String sql ="select * from CLIENT where clientid="+idx;
        
        ResultSet rs = st.executeQuery(sql);
        
        int x=101;
        while(rs.next())
        {
             //add form code here
          %>
            
            <form name="f1" class="well formclass" method="post" action="Update_Client_Process_Emp.jsp">
                <input type="hidden" name="id" value="<%=rs.getInt("CLIENTID")%>">
		<h1 class="text-center"><font color="gold"> Client Payment Entry</font></h1>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Payment Date</label>
				</div>
				<div class="col-sm-8">
					<input type="date" name="dt" value="<%=rs.getString("DATE")%>" class="form-control">
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>First Name</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="fname" value="<%=rs.getString("FNAME")%>"  class="form-control">
				</div>
			</div>
		</div>


		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Last Name</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="lname" value="<%=rs.getString("LNAME")%>" class="form-control">
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Payment For</label>
				</div>
		    <div class="col-sm-8">
					
		       <select name="p_for"  class="form-control"  required>
          <option disabled selected>------ Select Type Of Property ------</option>
          <option value="5BHK" <%=rs.getString("p_for").equals("5BHK")? "selected":""%> >5BHK</option>
				<option value="4BHK" <%=rs.getString("P_FOR").equals("4BHK")? "selected":""%>>4BHK</option>
				<option value="3BHK" <%=rs.getString("P_FOR").equals("3BHK")? "selected":""%>>3BHK</option>
				<option value="2BHK" <%=rs.getString("P_FOR").equals("2BHK")? "selected":""%>>2BHK</option>
				<option value="1BHK" <%=rs.getString("P_FOR").equals("1BHK")? "selected":""%>>1BHK</option>
				<option value="1RK" <%=rs.getString("P_FOR").equals("1RK")? "selected":""%>>1RK</option>
				<option value="Row-House" <%=rs.getString("P_FOR").equals("Row-House")? "selected":""%>>Row-House</option>
				<opyion value="Bungalows" <%=rs.getString("P_FOR").equals("Bungalows")? "selected":""%>>Bungalows</option>
        </select>
               
                 </div>
			</div>
		</div>


<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label >Payment Mode</label>
				</div>
				<div class="col-sm-8">
                                    <div>
					<input type="radio" name="p_mode" value="NetBanking Payment" <%=rs.getString("p_mode").equals("NetBanking Payment")? "checked":""%>> NetBanking Payment
                                    </div>
                                    <div>
					<input type="radio" name="p_mode" value="Cheque Payment"  <%=rs.getString("p_mode").equals("Cheque Payment")? "checked":""%>> Cheque Payment
                                    </div>
                                    <div>
					<input type="radio" name="p_mode" value="UPI Payment" <%=rs.getString("p_mode").equals("UPI Payment")? "checked":""%>> UPI Payment
                                    </div>
                                    <div>
					<input type="radio" name="p_mode" value="Cash Payment"  <%=rs.getString("p_mode").equals("Cash Payment")? "checked":""%>> Cash Payment
                                    </div>

					
				</div>
			</div>
		</div>


		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Payment Amount</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="p_amt" value="<%=rs.getString("P_AMT")%>" class="form-control">
				</div>
			</div>
		</div>

		

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Payment entry by</label>
				</div>
				<div class="col-sm-8">
                                    <input type="text" name="p_entry" value="<% out.print(session.getAttribute("session_uname")); %>" class="form-control" readonly>
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
