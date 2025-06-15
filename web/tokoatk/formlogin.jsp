<%-- 
    Document   : formlogin
    Created on : 13 Jun 2025, 23.19.20
    Author     : baphien
--%>

<%@page import="tokoatk.User"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    User user = new User();
    boolean loginSukses = user.login(username, password);

    if (loginSukses) {
        session.setAttribute("username", user.getUsername());
        session.setAttribute("fullname", user.getFullname());
        response.sendRedirect("home.jsp");
    } else {
        // Simpan pesan error ke session
        session.setAttribute("loginError", "Username atau password salah");
        response.sendRedirect("formlogin.view.jsp");
    }
%>


