<%-- 
    Document   : userhapus
    Created on : 14 Jun 2025, 07.50.23
    Author     : baphien
--%>

<%@page import="tokoatk.User"%>
<%
    String username = request.getParameter("username");
    User user = new User();
    user.username = username;
    user.hapus();

    response.sendRedirect("userlist.jsp");
%>

