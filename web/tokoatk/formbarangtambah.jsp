<%-- 
    Document   : formbarangtambah
    Created on : 13 Jun 2025, 23.55.38
    Author     : baphien
--%>

<%@ page import="tokoatk.Barang" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Siapkan forward ke view
    RequestDispatcher dispatcher = request.getRequestDispatcher("formbarangtambah.view.jsp");
    dispatcher.forward(request, response);
%>
