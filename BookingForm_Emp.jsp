<!DOCTYPE html>
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
            <form name="f1" class="well formclass" method="post" action="Booking_Emp.jsp">
		<h2 class="text-center"><font color="gold"> Booking Entry</font></h2>

		<div class="form-group">
			<div class="row">

					<input type="date" name="dt" class="form-control">
		   </div>
		</div>

		<div class="form-group">
			<div class="row">

					<input type="text" name="fname" placeholder="First Name" class="form-control">
		   </div>
		</div>


		<div class="form-group">
			<div class="row">
					<input type="text" name="lname" placeholder="Last Name" class="form-control">
				
			</div>
		</div>

		<div class="form-group">
			<div class="row">
					<input type="number" name="phone_no" placeholder="Phone Number" class="form-control">
			</div>
		</div>



		<div class="form-group">
			<div class="row">
					<input type="text" name="email" placeholder="Email Id" class="form-control">
			</div>
		</div>

		

	

		<div class="form-group">
			<div class="row">
					<input type="text" name="booking_amt" placeholder="Booking Amount" class="form-control">
			</div>
		</div>


       

        <div class="form-group">
			    <div class="row">
                                <input type="text" name="entry_by" placeholder="Entry_By" value="<% out.print(session.getAttribute("session_uname")); %>" class="form-control" readonly>
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
 </div>

</body>
</html>