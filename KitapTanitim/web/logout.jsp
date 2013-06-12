<%-- 
    Document   : logout
    Created on : 09.Haz.2013, 17:29:59
    Author     : aolmez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <% session.setAttribute("userInfo", null);
    response.sendRedirect("./giris.jsp");
    %>
