<%-- 
    Document   : saleshapus
    Created on : 14 Jun 2025, 17.29.27
    Author     : baphien
--%>

<%@ page import="tokoatk.Sales" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isErrorPage="false" %>
<%
    String id = request.getParameter("id");

    if (id == null || id.trim().isEmpty()) {
%>
        <p style="color:red;">❌ ID transaksi tidak valid.</p>
<%
    } else {
        try {
            Sales sales = new Sales();

            if (sales.baca(id)) {
                boolean deleted = sales.hapus();

                if (deleted) {
                    response.sendRedirect("saleslist.jsp");
                } else {
%>
                    <p style="color:red;">❌ Gagal menghapus transaksi dengan ID: <%= id %>.</p>
<%
                }
            } else {
%>
                <p style="color:red;">❌ Transaksi dengan ID: <%= id %> tidak ditemukan.</p>
<%
            }
        } catch (Exception e) {
%>
            <p style="color:red;">❌ Terjadi kesalahan: <%= e.getMessage() %></p>
<%
            e.printStackTrace();
        }
    }
%>
