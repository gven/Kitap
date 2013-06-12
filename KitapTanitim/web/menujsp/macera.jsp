
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.microsoft.sqlserver.jdbc.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Macera Kitapları</title>
</head>
<body background="macera.jpg">
    <center>
	<table id="mainTable" cellspacing="0" cellpadding="0">	
                    <td valign="top" >
                        <table  width="100%" border="4" bgcolor="gray">
                            <tr heigth="20">
                                <th colspan="3"><h2><b>Macera Kitapları</b></h2> </th>
                            </tr>
                                <%                    
                                  Class.forName("com.mysql.jdbc.Driver");
                                  Connection baglanti = DriverManager.getConnection("jdbc:mysql://localhost:3306/kitaplar","root","gven437313");
                                  Statement komut = baglanti.createStatement();                                       
                                  ResultSet reader = komut.executeQuery("Select id, ad, yazar, ozet from macera");
                                  while(reader.next()){
                                    int id = reader.getInt("id");
                                %>
                                <tr heigth="80">
                                     <td width="250">
                                          <%= reader.getString("ad") %>
                                      </td>          
                                      <td width="250">
                                               <%= reader.getString("yazar") %>
                                      </td>
                                      <td width="250">                                           
                                         <a href="http://tr.wikipedia.org/wiki/<%= reader.getString("ad")%>">
                                         <%= reader.getString("ozet") %>
                                        </a>
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
		</table>
	</center>
</body>
</html>
