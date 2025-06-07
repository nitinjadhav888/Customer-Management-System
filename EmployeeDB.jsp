<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('pics/emp5.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .header {
            background: rgba(0, 0, 0, 0.7);
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            font-size: 22px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .header .logout a {
            color: #ff6b6b;
            text-decoration: none;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.2);
        }

        .header .logout a:hover {
            background: #ff6b6b;
            color: white;
        }

        .container {
            width: 85%;
            max-width: 1100px;
            margin: 60px auto;
            padding: 30px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h1 {
            color: black;
            font-size: 32px;
            margin-bottom: 30px;
            letter-spacing: 2px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 20px;
        }

        .button {
            background: linear-gradient(to right, #0072ff, #00c6ff);
            color: white;
            padding: 15px;
            text-align: center;
            border-radius: 10px;
            font-size: 18px;
            text-decoration: none;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 60px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .button:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.3);
        }

        @media (max-width: 768px) {
            .grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            .grid {
                grid-template-columns: repeat(1, 1fr);
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <div>Skyline Dashboard</div>
        <div class="logout"><a href="index.html">Logout</a></div>
    </div>        

    <div class="container">
        <h1>EMPLOYEE DASHBOARD</h1>
        <div class="grid">
            <a href="New_Enquiry_Form_Emp.jsp" class="button">Enquiry</a>
            <a href="BookingForm_Emp.jsp" class="button">Booking</a>
            <a href="SalesForm_Emp.jsp" class="button">Sales Entry</a>
             <a href="Display_Enquiry_Emp.jsp" class="button">All Enquiries</a>
             <a href="Display_Booking_Emp.jsp" class="button">Display Booking</a>
              <a href="Display_Sales_Emp.jsp" class="button">Display Sales</a>
            <a href="PettyCash_Form_Emp.jsp" class="button">Petty Cash</a>
            <a href="Request_Raise_Form_Emp.jsp" class="button">Request Raised</a>
            <a href="FollowUp_Enquiry_Emp.jsp" class="button">Follow Up</a>
            <a href="Display_PettyCash_Emp.jsp" class="button">Display Petty Cash</a>  
            <a href="Display_Request_Raise_Emp.jsp" class="button">Display Requests</a>
            <a href="Lead_Enquiry_Emp.jsp" class="button">Lead</a>
        </div>
    </div>
</body>
</html>
