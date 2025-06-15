<%-- 
    Document   : barangtambah
    Created on : 13 Jun 2025, 23.56.33
    Author     : baphien
--%>

<%@ page import="tokoatk.Barang" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Ambil parameter dari form
    String id = request.getParameter("id");
    String nama = request.getParameter("nama");
    String jenis = request.getParameter("jenis");
    String hargaStr = request.getParameter("harga");

    // Validasi input
    if (id != null && nama != null && jenis != null && hargaStr != null) {
        try {
            int harga = Integer.parseInt(hargaStr);

            // Buat objek dan simpan ke database
            Barang b = new Barang();
            b.id = id;
            b.nama = nama;
            b.jenis = jenis;
            b.harga = harga;

            if (b.tambah()) {
                // Redirect ke list jika sukses
                response.sendRedirect("baranglist.jsp");
            } else {
                out.println("<p style='color:red;'>❌ Gagal menambahkan barang. Silakan periksa kembali input Anda.</p>");
            }
        } catch (NumberFormatException e) {
            out.println("<p style='color:red;'>❌ Harga harus berupa angka yang valid.</p>");
        }
    } else {
        out.println("<p style='color:red;'>❌ Semua field wajib diisi.</p>");
    }
%>

