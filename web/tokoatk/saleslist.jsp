<%-- 
    Document   : saleslist
    Created on : 14 Jun 2025, 00.00.54
    Author     : baphien
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="tokoatk.Sales"%>
<%
    ArrayList<Sales> list = Sales.getList();
    
    request.setAttribute("list", list);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("saleslist.view.jsp");
    dispacher.forward(request, response);
%>
