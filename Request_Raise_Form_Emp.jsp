<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Raise Form</title>
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
            width: 40%;
            background: rgba(0, 0, 0, 0.6);
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
        .form-group input, .form-group textarea {
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
        <form class="form-container" method="post" action="Request_Raise_Emp.jsp">
            <h2>Request Raise Form</h2>
            
            <div class="form-group">
                <label>Request Date</label>
                <input type="date" name="request_date" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Request Time</label>
                <input type="time" name="request_time" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Request Details</label>
                <textarea name="request_details" rows="4" class="form-control" required></textarea>
            </div>
            <div class="form-group">
                <label>Request Priority</label><br>
                <label ><input type="radio" name="priority" value="High" > High</label>
                <label ><input type="radio" name="priority" value="Medium"> Medium</label>
                <label ><input type="radio" name="priority" value="Low"> Low</label>
            </div>
            <div class="form-group">
                <label>Request Raised By</label>
                <input type="text" name="raised_by" class="form-control" value="ishana" readonly>
            </div>
            <div class="btn-container">
                <button type="submit" class="btn btn-success">Submit Request</button>
                <button type="reset" class="btn btn-danger">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>
