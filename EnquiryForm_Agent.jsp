<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Enquiry Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
             background: url('pics/enquiry.jpg') ;
            background-size: cover;
        }

        .container {
            width: 70%;
            max-width: 500px;
            margin: 10px auto;
            padding: 10px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            color: black;
        }

        h1 {
            text-align: center;
            margin-bottom: 10px;
            color: black;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 7px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input, select {
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group input:focus, .form-group select:focus {
            outline: 2px solid #3498db;
        }

        .status-group {
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        button {
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn {
            background: #3498db;
            color: white;
        }

        .reset-btn {
            background: #e74c3c;
            color: white;
        }

        .submit-btn:hover {
            background: #2980b9;
        }

        .reset-btn:hover {
            background: #c0392b;
        }
    </style>
</head>
<body>
    <div class="container">
        <form name="f1" class="well formclass" method="post" action="New_Enquiry_Agt.jsp">
        <h1>New Enquiry Form</h1>
        <form>
            <div class="form-group">
                <label>First Name</label>
                <input type="text" name="fname" class="form-control">
            </div>
            <div class="form-group">
                <label>Last Name</label>
                 <input type="text" name="lname" class="form-control">
            </div>
            <div class="form-group">
                <label>Phone Number</label>
                 <input type="text" name="phone_no" class="form-control">
            </div>
            <div class="form-group">
                <label>Email ID</label>
                <input type="text" name="email" class="form-control">
            </div>
            <div class="form-group">
                <label>Minimum Budget</label>
                 <input type="text" name="min_bgt" class="form-control">
            </div>
            <div class="form-group">
                <label>Maximum Budget</label>
                 <input type="text" name="max_bgt" class="form-control">
            </div>
            <div class="form-group">
                <label>Type Of Property</label>
               <select name="property"  class="form-control"  required>
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
            <div class="form-group">
                <label>Suggested Cost</label>
                <input type="number" name="sg_cost">
            </div>
            <div class="status-group">
                <label>Status:</label>
               
	       <input type="radio" name="status" value="Lead"> Lead
	       <input type="radio" name="status" value="Follow Up"> Follow Up
               <input type="radio" name="status" value="Not Intrested"> Not Intrested
            </div>
            <div class="button-group">
                <button class="submit-btn" type="submit">Submit Enquiry</button>
                <button class="reset-btn" type="reset">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>