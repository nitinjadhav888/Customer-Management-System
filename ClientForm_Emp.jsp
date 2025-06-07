<!DOCTYPE html>
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
            
            <form name="f1" class="well formclass" method="post" action="Client_Emp.jsp">
		<h1 class="text-center"><font color="gold"> Client Payment Entry</font></h1>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Payment Date</label>
				</div>
				<div class="col-sm-8">
					<input type="date" name="dt" class="form-control">
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>First Name</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="fname"  class="form-control">
				</div>
			</div>
		</div>


		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<label>Last Name</label>
				</div>
				<div class="col-sm-8">
					<input type="text" name="lname"  class="form-control">
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
                     <option value="" disabled selected>------ Select Type Of Property ------</option>
                               <option value="5BHK">5BHK</option>
				<option value="4BHK">4BHK</option>
				<option value="3BHK">3BHK</option>
				<option value="2BHK">2BHK</option>
				<option value="1BHK">1BHK</option>
				<option value="1RK">1RK</option>
				<option value="Row-House">Row-House</option>
				<opyion value="Bungalows">Bungalows</option>
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
					<input type="radio" name="p_mode" value="NetBanking Payment"> NetBanking Payment
                                    </div>
                                    <div>
					<input type="radio" name="p_mode" value="Cheque Payment"> Cheque Payment
                                    </div>
                                    <div>
					<input type="radio" name="p_mode" value="UPI Payment"> UPI Payment
                                    </div>
                                    <div>
					<input type="radio" name="p_mode" value="Cash Payment"> Cash Payment
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
					<input type="text" name="p_amt" class="form-control">
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
 </div>

</body>
</html>
