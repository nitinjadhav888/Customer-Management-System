<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('pics/enquiry.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
        }
        .form-container {
            width: 50%;
            background: rgba(0, 0, 0, 0.5);
            color: white;
            margin: 8% auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 2px 4px 6px rgba(255, 255, 255, 0.3);
        }
        h2 {
            text-align: center;
            color: gold;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: none;
        }
        .btn-container {
            text-align: center;
        }
        .btn {
            margin: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form class="form-container" method="post" action="Sales_Emp.jsp">
            <h2>Sales Entry Form</h2>
            
            <div class="form-group">
                <input type="text" name="fname" placeholder="First Name" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="text" name="lname" placeholder="Last Name" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="number" name="phone_no" placeholder="Phone Number" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="email" name="email" placeholder="Email Id" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="text" name="pan_card" placeholder="Pan Card" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="text" name="aadhar_card" placeholder="Adhar Card" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="number" name="cash_amount" placeholder="Cash Amount" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="number" name="loan_amount" placeholder="Loan Amount" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="date" name="date" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="text" name="entry_by" class="form-control">
            </div>
            <div class="btn-container">
                <button type="submit" class="btn btn-success">Submit Booking</button>
                <button type="reset" class="btn btn-danger">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>
