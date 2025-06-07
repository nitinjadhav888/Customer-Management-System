<%@page import="java.sql.*"%> 

<% 
    int idx=Integer.parseInt(request.getParameter("id"));//Hidden form Id
    
     String dt=request.getParameter("dt");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String p_for=request.getParameter("p_for");
    String p_mode=request.getParameter("p_mode");
    String p_amt=request.getParameter("p_amt");
    String p_entry=request.getParameter("p_entry");
    
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement();
        
        String myquery="Update client set date='"+dt+"',fname='"+fname+"',lname='"+lname+"',p_for='"+p_for+"',p_mode='"+p_mode+"',p_amt='"+p_amt+"',p_entry='"+p_entry+"'where clientid="+idx;
      

        int i=st.executeUpdate(myquery);

        
        response.sendRedirect("Display_Client_Emp.jsp");


    }
     catch(Exception e)
     {
         System.out.print(e);
     }

%>
