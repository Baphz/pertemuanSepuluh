<%-- 
    Document   : salesdetailtambah
    Created on : 14 Jun 2025, 00.02.05
    Author     : baphien
--%>

<%@ page import="tokoatk.Sales" %>
<%
    String salesId = request.getParameter("salesId");
    String barangId = request.getParameter("barangId");
    String qtyParam = request.getParameter("qty");
    String hargaParam = request.getParameter("harga");

    if (salesId == null || barangId == null || qtyParam == null || hargaParam == null) {
        out.println("<p style='color:red;'>? Semua field wajib diisi.</p>");
        return;
    }

    try {
        int qty = Integer.parseInt(qtyParam);
        int harga = Integer.parseInt(hargaParam);

        Sales sales = new Sales();
        if (sales.baca(salesId)) {
            if (sales.addDetail(barangId, qty, harga)) {
                response.sendRedirect("formsalestambah.jsp?id=" + salesId);
            } else {
                out.println("<p style='color:red;'>? Gagal menambahkan detail penjualan.</p>");
            }
        } else {
            out.println("<p style='color:red;'>? Sales ID tidak ditemukan. Silakan mulai ulang proses.</p>");
        }
    } catch (NumberFormatException e) {
        out.println("<p style='color:red;'>? Qty dan Harga harus angka.</p>");
    }
%>
