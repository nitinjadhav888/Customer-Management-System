<%@page import="java.sql.*"%> 

<% 
    int idx=Integer.parseInt(request.getParameter("id"));//Hidden form Id
    
     String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String phone_no=request.getParameter("phone_no");
    String email=request.getParameter("email");
    String min_budget=request.getParameter("min_bgt");
    String max_budget=request.getParameter("max_bgt");
    String type_of_property=request.getParameter("property");
    String sugg_cost=request.getParameter("sg_cost");
    String status=request.getParameter("status");
    
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement();
        
        String myquery="Update enquiry_agent set fname='"+fname+"',lname='"+lname+"',phone_no='"+phone_no+"',email='"+email+"',min_budget='"+min_budget+"',max_budget='"+max_budget+"',type_of_property='"+type_of_property+"',sugg_cost='"+sugg_cost+"',status='"+status+"'where enqid="+idx;
      

        int i=st.executeUpdate(myquery);

        
        response.sendRedirect("Display_Enquiry_Agt.jsp");


    }
     catch(Exception e)
     {
         System.out.print(e);
     }

%>
