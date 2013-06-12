

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.microsoft.sqlserver.jdbc.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body background="Images/kitap.jpg">
    <center>
		<table id="mainTable" cellspacing="0" cellpadding="0">
		
			<td valign="top" >
                            <table width="100%">
                                <tr>
                                    <th>
                                        Urunler
                                    </th>
                                </tr>
                                <%
                     
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection baglanti = DriverManager.getConnection 
                                                    ("jdbc:mysql://localhost:3306/msql","root","gven437313");
                                        Statement komut = baglanti.createStatement();
                                        
                                        ResultSet reader = komut.executeQuery("Select UserID, FirsName, LastName, UserName, Password from nortwind");
                                        while(reader.next()){
                                            int id = reader.getInt("UserID");
                                            %>
                                            <tr>
                                                <td>
                                                    <a href="./urundetay.jsp?id=<%= reader.getInt("UserID")%>">
                                                        <%= reader.getString("UserName") %>
                                                    </a>
                                                </td>
                                                <td>
                                                    <%= reader.getString("UserName") %>
                                                </td>
                                                <td>
                                                    <%= reader.getString("Password") %>
                                                </td>
                                            </tr>
                                            <% 
                                        }
                                        reader.close();
                                        komut.close();
                                        baglanti.clearWarnings();
    %>
                            </table>
			</td>
		</tr>
		
		</table>
	</center>
</body>
</html>
