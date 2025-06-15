<%-- 
    Document   : salesdetailhapus
    Created on : 14 Jun 2025, 17.26.11
    Author     : baphien
--%>

<%@ page import="tokoatk.SalesDetail" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String idParam = request.getParameter("id");
    String salesId = request.getParameter("salesId");

    if (idParam != null && salesId != null) {
        try {
            int id = Integer.parseInt(idParam);
            SalesDetail detail = new SalesDetail();
            if (detail.baca(id)) {
                if (detail.hapus()) {
                    response.sendRedirect("formsalestambah.jsp?id=" + salesId);
                } else {
                    out.println("<p style='color:red;'>❌ Gagal menghapus detail penjualan.</p>");
                }
            } else {
                out.println("<p style='color:red;'>❌ Data tidak ditemukan.</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p style='color:red;'>❌ Terjadi kesalahan: " + e.getMessage() + "</p>");
        }
    } else {
        out.println("<p style='color:red;'>❌ Parameter tidak lengkap.</p>");
    }
%>
