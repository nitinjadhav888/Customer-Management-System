<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agent Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('pics/agent.webp') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .header {
           background: linear-gradient(to right, #00c6ff, #0072ff);
            padding: 4px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: navy;
            font-size: 20px;
            font-weight: bold;
        }
        .header h1{
            color: black;
        }

        .header a {
            text-decoration: none;
            color: blue;
            font-size: 16px;
        }
          .welcome
                {
                   
                    color: gold;
                    display: inline-block;
                    
                   
                }
                
               .logout
               {
                   float: right; 
               }
                 .logout a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 8px 12px;
            background: #e74c3c;
            border-radius: 5px;
        }

        .logout a:hover {
            background: #c0392b;
        }

        .container {
            width: 80%;
            max-width: 1000px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h1 {
            color: white;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .button {
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: white;
            padding: 15px;
            text-align: center;
            border-radius: 10px;
            font-size: 16px;
            text-decoration: none;
            font-weight: bold;
            display: block;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .button:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.3);
        }

        @media (max-width: 600px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
     <div class="header">
                    <div class="welcome">
                        <h1>Welcome  <% out.print(session.getAttribute("session_uname")); %></h1>
                    </div> 
                    <div class="welcome logout">
                        <h4 ><a href="index.html">Log Out</a></h4>
                    </div>
                    
    </div>        

    <div class="container">
        <h1>AGENT DASHBOARD</h1>
        <div class="grid">
            <a href="EnquiryForm_Agent.jsp" class="button">Enquiry</a>
            <a href="BookingForm_Agt.jsp" class="button">Booking</a>
            <a href="SalesForm_Agt.jsp" class="button">Sales Entry</a>
            <a href="Request_Raise_Form_Agt.jsp" class="button">Request Raise</a>
            <a href="FollowUp_Agt.jsp" class="button">Follow Up</a>
            <a href="Display_Enquiry_Agt.jsp" class="button">Display Enquiries</a>
            <a href="Display_Booking_Agt.jsp" class="button">Display Booking</a>
            <a href="Display_Sales_Agt.jsp" class="button">Display Sales</a>
            <a href="Display_Request_Raise_Agt.jsp" class="button">Display Request</a>
            <a href="Lead_Agt.jsp" class="button">Lead</a>
        </div>
    </div>
</body>
</html>
