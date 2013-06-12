
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.microsoft.sqlserver.jdbc.*"  %>
<%@page import="MyP.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body background="Images/kitap.jpg">
    <center>
    <table border="1">
        <tr height="193">
            <td width="1066" colspan="2">
                <img src="./Images/banner.jpg" alt="banner">
            </td>
        </tr>
        <tr height="300">
            <td width="200" valign="top">
                <jsp:include page="./Include/menu.jsp"></jsp:include><br>
                
            </td>
            <td width="866">
                <center>
		<table id="mainTable" cellspacing="0" cellpadding="0">
			<td valign="top">
				<form action="./form.jsp" method="POST">
					<fieldset>
						<legend>
							Kullanici Girisi
						</legend>
						<table>
							<tr>
								<td width="100" align="right">
									<b>Kullanici Adi:</b>
								</td>
								<td>
									<input type="text" name="userName" />
								</td>
							</tr>
							<tr>
								<td width="100" align="right">
									<b>Sifre:</b>
								</td>
								<td>
									<input type="password" name="password" />
								</td>
							</tr>
							<tr >
								<td colspan="2">
									<input type="submit" value="Giris Yap" />
								</td>
							</tr>
							<tr >
								<td colspan="2">
									<% String pageBack = request.getParameter("returnUrl");
                                                                        if(pageBack != null){
                                                                            session.setAttribute("returnUrl", request.getParameter("returnUrl"));
                                                                        }
                                                                                                                                                       
									   String userName = request.getParameter("userName");
									   String password = request.getParameter("password");
									   if(userName != null)
									   {
                                                                                   Class.forName("com.mysql.jdbc.Driver");
                                                                                    Connection baglanti = DriverManager.getConnection 
                                                                                                ("jdbc:mysql://localhost:3306/msql","root","gven437313");
                                                                                    
                                                                                    PreparedStatement ps = baglanti.prepareStatement("Select FirsName, LastName from nortwind where UserName=? and Password=?");
                                                                                    ps.setString(1, userName);
                                                                                    ps.setString(2, password);
                                                                                    ResultSet sonuc = ps.executeQuery();
										   if(sonuc.next())
										   {
											   User user = new User();
											   user.setKullaniciAdi(userName);
											   user.setAd(sonuc.getString("FirsName"));
											   user.setSoyad(sonuc.getString("LastName"));
											   session.setAttribute("userInfo", user);
											   
											   if(session.getAttribute("returnUrl") != null)
											   {
												   response.sendRedirect("./" + session.getAttribute("returnUrl") + ".jsp");
                                                                                                   session.setAttribute("returnUrl", null);
											   }
											   else
											   {
												   response.sendRedirect("./giris.jsp");
											   }
                                                                                   }
                                                                                        else
										   {
											   %>
                                                                                               Kullanıcı Bulunamadı  
											   <%
										   }
										   sonuc.close();
										   ps.close();
										   baglanti.close();
									   }
									%>
								</td>
							</tr>
						</table>
                                            </center>
					</fieldset>
				</form>
			</td>
		</tr>
		
		</table>
	</center>
</body>
</html>

            
   