<%@page import="java.sql.*"%> 

<% 
    int idx=Integer.parseInt(request.getParameter("id"));//Hidden form Id
    String p_date=request.getParameter("p_date");
    String d_name=request.getParameter("d_name");
    String p_name=request.getParameter("p_name");
    String p_rate=request.getParameter("p_rate");
    String p_qty=request.getParameter("p_qty");
    String p_bill=request.getParameter("p_bill");
    String emp_name=request.getParameter("emp_name");
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Skyline_DB","root","");
        
        Statement st=conn.createStatement();
        
        String myquery="Update purchase set p_date='"+p_date+"',d_name='"+d_name+"',p_name='"+p_name+"',p_rate='"+p_rate+"',p_qty='"+p_qty+"',p_bill='"+p_bill+"',emp_name='"+emp_name+"'where purchaseid="+idx;
      

        int i=st.executeUpdate(myquery);

        
        response.sendRedirect("Display_Purchase_Emp.jsp");


    }
     catch(Exception e)
     {
         System.out.print(e);
     }

%>
