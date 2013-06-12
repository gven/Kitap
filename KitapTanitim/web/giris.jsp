
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
    <table>
        <tr >
            <td width="1066" colspan="2">
                <img src="./Images/banner.jpg" alt="banner">
            </td>
        </tr>
        <tr height="300">
            <td width="200" valign="top">
                <jsp:include page="./Include/menu.jsp"></jsp:include><br>
                <jsp:include page="./Include/loginbox.jsp"></jsp:include>
            </td>
            <td width="866"><center>
              <h2> <b> <I>"Kitaplar, beynin çocuklarıdır." </b>
                                                J. Swift</I></b></h2><br>
               <h2> <b> <I>"Kitaplar soğuk ama, güvenilir dostlardır."
                                                                Victor Hugo</I></b></h2><br>
               <h2> <b><I> "İyi bir kitap insana can veren kandır."
                                                            John Miltont</I></b></h2><br>
                                                
        </center>
            </td>
            
        </tr>
	
         
            </table>
	</center>
                                             
</body>
</html>
