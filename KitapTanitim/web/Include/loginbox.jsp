<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MyP.User"%>

<%
	
        User user = (User)session.getAttribute("userInfo");
	if(user == null)
	{
		%>
			<a href="./form.jsp"><h3>Giris Yap<h3></a>
		<%
	}
	else
	{
		
		%>
		<%=user.toString() %>, <a href="./logout.jsp">Cikis</a>
		<%
	}
%>