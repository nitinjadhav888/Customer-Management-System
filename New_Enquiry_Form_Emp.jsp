<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>New Enquiry Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('pics/emp5.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: white;
        }
        .form-container {
            max-width: 500px;
            margin: 5% auto;
            background: rgba(0, 0, 0, 0.7);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(255, 255, 255, 0.2);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: gold;
        }
        .btn-custom {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2>New Enquiry Form</h2>
            <form name="f1" method="post" action="New_Enquiry_Emp.jsp">
                <div class="form-group">
                    <input type="text" name="fname" class="form-control" placeholder="First Name" required>
                </div>
                <div class="form-group">
                    <input type="text" name="lname" class="form-control" placeholder="Last Name" required>
                </div>
                <div class="form-group">
                    <input type="number" name="phone_no" class="form-control" placeholder="Phone Number" required>
                </div>
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="Email ID" required>
                </div>
                <div class="form-group">
                    <input type="text" name="min_bgt" class="form-control" placeholder="Minimum Budget" required>
                </div>
                <div class="form-group">
                    <input type="text" name="max_bgt" class="form-control" placeholder="Maximum Budget" required>
                </div>
                <div class="form-group">
                    <select name="property" class="form-control" required>
                        <option value="" disabled selected>-- Select Type Of Property --</option>
                        <option value="5BHK">5BHK</option>
                        <option value="4BHK">4BHK</option>
                        <option value="3BHK">3BHK</option>
                        <option value="2BHK">2BHK</option>
                        <option value="1BHK">1BHK</option>
                        <option value="1RK">1RK</option>
                        <option value="Row-House">Row-House</option>
                        <option value="Bungalows">Bungalows</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" name="sg_cost" class="form-control" placeholder="Suggested Cost">
                </div>
                <div class="form-group">
                    <label>Status</label>
                    <div>
                        <input type="radio" name="status" value="Not Interested"> Not Interested
                        <input type="radio" name="status" value="Lead"> Lead
                        <input type="radio" name="status" value="Follow Up"> Follow Up
                    </div>
                </div>
                <button type="submit" class="btn btn-success btn-custom">Submit Enquiry</button>
                <button type="reset" class="btn btn-danger btn-custom mt-2">Reset</button>
            </form>
        </div>
    </div>
</body>
</html>
