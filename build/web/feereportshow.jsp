<html>
    <style>
        
        .mytheme
        {
            height: 10%;
            font-size: 20px;
            width:10%;
			font-family:"Courier New", Courier, monospace;
        }
        .mytheme:hover
        {
            background-color:white;
        }
        a{
	text-decoration: none;
	color:black;
	font-family: "Courier New", Courier, monospace;
	font-weight: bold;
        };
    marquee {
	font-family: Lucida Sans Unicode, Lucida Grande, sans-serif;
}
    </style>
<body> 
        <table>    
        </table>        
        <div style="width:100%; height:100%; background:white; color: #FFF;">
            <form action="UserLogin.jsp">
              <div align="center">
                <table width='98%' height="10%" >
                  <tr>
  <td width="92%" height="73" bgcolor="#FFFFFF"><span style="background-image: url(../../Edumate/images%20related%20to%20books%20-%20Google%20Search_files/Books.jpg); font-size: xx-large; font-family: 'Courier New', Courier, monospace; font-size:80px; text-align: left; font-weight: bold;">Fees Management System</span></td>
                  </tr>
                </table>
                <table width="100%" height="10%">
                  <tr>
                    <td width="100%" height="5px"><hr>
                      <table width="100%" height="5px" border="0" align="center" cellpadding="10" cellspacing="2">
                        <tr bgcolor="#CC6666" align="center"></tr>
                        <tr bgcolor="#CC9966" align="center">
                          <td width="63" align="center"  class='mytheme'><strong> <a href='AdminWorkingPage1.jsp' >HOME</a></strong></td>
                          <td width="74" align="center" class='mytheme'><a href='Addstu.jsp'>ADD STUDENT</a></td>
                          <td width="74" align="center" class='mytheme'><strong><a href='Addfees1.jsp'>ADD FEES </a></strong></td>
                          <td width="48" align="center" class='mytheme'><a href='view1.jsp'>VIEW FINE</a></td>
                          <td width="41" align="center"  class='mytheme'><strong><a href='Delete1.jsp'>DELETE STUDENT</a></strong></td>
                        </tr>
                    </table></td>
                  </tr>
                </table>
                <div style="width:100%; height:100%; background-image:url('book7.jpg'); text-align: center; font-family: 'Courier New', Courier, monospace; font-weight: bold; font-style: italic; font-size: 36px;">
                    <p><br><br>
                    <table border='0' width="700px" align='center' cellpadding='10' cellspacing='5' style='color: black;margin-center:400px;background-color:#FFF;opacity:0.7;'>
                    <tr>
                      
                      <td>Roll no. </td>
                      <td>Total Fees</td>
                      <td>Fees Paid</td>
                      <td>Due Fees</td>
                    </tr>
                    
                    <%@page  import="java.sql.PreparedStatement" %>
                    <%@page  import="java.sql.ResultSet" %>
                    <%@page  import="java.sql.Connection" %>
                    <%@page  import="java.sql.DriverManager" %>
                    <%
                        
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolfees","root","root");
                    PreparedStatement st=con.prepareStatement("select* from feestable");
                    ResultSet rs=st.executeQuery(); 
                    while(rs.next())
                    {
                    %>
                    
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                    </tr>
                    
                    <%
                        }
                    %>
                    
              </table><br>
                    <br>
                  </p>
                </div>
              </div>
            </form>
        <td>&nbsp;</td>
    </body>
</html>