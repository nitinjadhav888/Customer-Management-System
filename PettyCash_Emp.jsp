<%@page import="java.sql.*"%> 

<%
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
      

       int i=st.executeUpdate("insert into purchase (P_DATE,D_NAME,P_NAME,P_RATE,P_QTY,P_BILL,EMP_NAME)values('"+p_date+"','"+d_name+"','"+p_name+"','"+p_rate+"','"+p_qty+"','"+p_bill+"','"+emp_name+"')");
      
       response.sendRedirect("Display_PettyCash_Emp.jsp");
    }
    
    catch(Exception e)
    {
        System.out.print(e);
    }



%>