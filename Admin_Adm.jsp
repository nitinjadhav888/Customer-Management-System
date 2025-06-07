<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
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

        .header h1 {
            color: black;
            margin: 10px;
        }

        .header a {
            text-decoration: none;
            color: blue;
            font-size: 16px;
        }

        .welcome {
            color: gold;
            display: inline-block;
        }

        .logout {
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
            width: 90%;
            max-width: 1100px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .dashboard-title {
            color: white;
            font-size: 30px;
            margin-bottom: 30px;
        }

        .section {
            margin-bottom: 40px;
        }

        .section h3 {
            color: #ffd700;
            font-size: 22px;
            margin-bottom: 15px;
        }

        .buttons {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
        }

        .buttons a {
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: white;
            padding: 15px;
            text-align: center;
            border-radius: 10px;
            font-size: 16px;
            text-decoration: none;
            font-weight: bold;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .buttons a:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.3);
        }

        @media (max-width: 600px) {
            .container {
                width: 95%;
            }

            .dashboard-title {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="welcome">
            <h1>Welcome <%= session.getAttribute("session_uname") %></h1>
        </div>
        <div class="logout">
            <a href="index.html">Log Out</a>
        </div>
    </div>

    <div class="container">
        <h2 class="dashboard-title">ADMIN DASHBOARD</h2>

        <!-- User Details -->
        <div class="section">
            <h3>User Details</h3>
            <div class="buttons">
                <a href="NewUserRegistration.html">Create User</a>
                <a href="DisplayUser_Adm.jsp">Display all Users</a>
                <a href="DayBook_Adm.jsp">Day Book</a>
                <a href="UpdateUser_Adm.jsp">Update User</a>
                <a href="Employee_User_Adm.jsp">Employee User</a>
                <a href="Agent_User_Adm.jsp">Agent User</a>
            </div>
        </div>

        <!-- Employee Task Details -->
        <div class="section">
            <h3>Employee Task Details</h3>
            <div class="buttons">
                <a href="Display_5BHK_Adm.jsp">5BHK</a>
                <a href="Display_4BHK_Adm.jsp">4BHK</a>
                <a href="Display_3BHK_Adm.jsp">3BHK</a>
                <a href="Display_2BHK_Adm.jsp">2BHK</a>
                <a href="Display_1BHK_Adm.jsp">1BHK</a>
                <a href="Display_1RK_Adm.jsp">1RK</a>
                <a href="Display_ROWHOUSE_Adm.jsp">Row House</a>
                <a href="">Bungalows</a>
                <a href="Display_Booking_Adm.jsp">Booking</a>
                <a href="#">Display Sales</a>
                <a href="#">Request Raised</a>
                <a href="#">Disp PettyCash</a>
            </div>
        </div>

        <!-- Agent Task Details -->
        <div class="section">
            <h3>Agent Task Details</h3>
            <div class="buttons">
                 <a href="Display_5BHK_Adm.jsp">5BHK</a>
                <a href="Display_4BHK_Adm.jsp">4BHK</a>
                <a href="Display_3BHK_Adm.jsp">3BHK</a>
                <a href="Display_2BHK_Adm.jsp">2BHK</a>
                <a href="Display_1BHK_Adm.jsp">1BHK</a>
                <a href="Display_1RK_Adm.jsp">1RK</a>
                <a href="Display_ROWHOUSE_Adm.jsp">Row House</a>
                <a href="">Bungalows</a>
                <a href="Display_Booking_Adm_Agent.jsp">Booking</a>
                <a href="#">Display Sales</a>
                <a href="#">Request Raised</a>
            </div>
        </div>
    </div>
</body>
</html>
