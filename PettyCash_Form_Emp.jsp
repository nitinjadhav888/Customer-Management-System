<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
</script>

        <script type="text/javascript">

		function bill()
		{  
			 var  bill=document.f1.p_rate.value*document.f1.p_qty.value;

		      document.f1.p_bill.value=bill;
	     };
	</script>

	<style type="text/css">
		body{
			background-image: url(pics/purchase.jpg);
			background-size: cover;
		}

		.formclass
	{
		width: 40%;
		background: rgba(0, 0, 0, 0.5);
		color: gold;
		margin-left: 25%;
		margin-top: 3%;
		box-shadow: 1px 3px 3px 2px skyblue;
	}
	label{
		margin-left: 2%;
	}
	</style>
</head>
<body>
    

	<div class="container">
            
            <form name="f1" class="well formclass" method="post" action="PettyCash_Emp.jsp">
		<h1 class="text-center"><font color="gold"> PettyCash Entry</font></h1>

		<div class="form-group">
			
				
					<label>Payment Date</label>
					<input type="date" name="p_date" class="form-control">
		</div>

		<div class="form-group">
			<label>Department Name</label>
					<input type="text" name="d_name"  class="form-control">
				
		</div>


		<div class="form-group">
			<label>product Name</label>
		    <input type="text" name="p_name"  class="form-control">
				
		</div>

		<div class="form-group">
			
			<label>Product Rate</label>
		    <input type="text" name="p_rate"  class="form-control">

		</div>

		<div class="form-group">
			
			<label>Product Quantity</label>
		    <input type="text" name="p_qty" onkeyup="bill()" class="form-control">

		</div>

		<div class="form-group">
			
			<label>Product Bill</label>
		    <input type="text" name="p_bill"  class="form-control">

		</div>

		<div class="form-group">
			
			<label>Mention Employee Name</label>
                        <input type="text" name="emp_name" value="<% out.print(session.getAttribute("session_uname")); %>"  class="form-control" readonly>

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
