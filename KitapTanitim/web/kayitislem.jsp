<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="MyP.User" %>

<!DOCTYPE html>
<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<title>Kayit Formu</title>
</head>
<body background="Images/kitap.jpg">
<div id="page">
	<div id="content">		
		<div class="boxed"><center>
                        <h1 class="title2">Kayit Formu</h1></center>
			<p><strong>
                                <form action="./kayitislem.jsp" method="POST">
                                <fieldset>
					<center>	
						<table>
							<tr>
								<td width="100" align="right">
									<b>Kullanici Adi: </b>
								</td>
								<td>
									<input type="text" name="UserName" value="" />
								</td>
							</tr>
							<tr>
								<td width="100" align="right">
									<b>Sifre: </b>
								</td>
								<td>
									<input type="password" name="Password" value="" />
								</td>
							</tr>
                                                        <tr>
								<td width="100" align="right">
									<b>Ad: </b>
								</td>
								<td>
									<input type="text" name="FirsName" value="" />
								</td>
							</tr>
                                                        <tr>
								<td width="100" align="right">
									<b>Soyad: </b>
								</td>
								<td>
									<input type="text" name="LastName" value="" />
								</td>
							</tr>
                                                        
                                                        <tr>
								<td colspan="2">
									<input type="submit" value="Kaydet" />
								</td>
							</tr>
							</tr>
							<tr >
								<td colspan="2">
									<% String pageBack = request.getParameter("returnUrl");
                                                                        if(pageBack != null){
                                                                            session.setAttribute("returnUrl", request.getParameter("returnUrl"));
                                                                        }
                                                                                                                                                       
									   String userName = request.getParameter("UserName");
									   String password = request.getParameter("Password");
                                                                           String firstName = request.getParameter("FirsName");
                                                                           String lastName = request.getParameter("LastName");
                                                                          
                                                                           
                                                                           
									   if(userName != null)
									   {
                                                                                   Class.forName("com.mysql.jdbc.Driver");
                                                                                    Connection baglanti = DriverManager.getConnection 
                                                                                                ("jdbc:mysql://localhost:3306/msql","root","gven437313");                                                                                    
                                                                                    Statement ps = baglanti.createStatement();
                                                                                    
                                                                                    ps.executeUpdate("insert into nortwind(UserName,Password,FirsName,LastName)"+
                                                                                            " values('"+userName+"','"+password+"','"+firstName+"','"+lastName+"' )");
                                                                                    
                                                                                    ResultSet sonuc = ps.executeQuery("Select * from nortwind order by UserID desc");
                                                                                    sonuc.next();
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
                       </strong></p>
		</div>
	</div>	
    </div>
</body>
</html>
