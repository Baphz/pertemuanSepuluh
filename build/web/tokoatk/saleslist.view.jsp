<%-- 
    Document   : saleslist.view.jsp
    Created on : 14 Jun 2025, 00.01.32
    Author     : baphien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar Penjualan</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="icon" type="image/png" href="../assets/favicon.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
<div class="container">
    <header>
        <h1><i class="fas fa-clipboard-list"></i> Daftar Transaksi Penjualan</h1>
    </header>

    <main>
        <div class="btn-group" style="margin-bottom: 1.5rem;">
            <a href="formsalestambah.jsp" class="btn btn-green">
                <i class="fas fa-plus"></i> Transaksi Baru
            </a>
        </div>

        <table class="data-table">
            <thead>
                <tr>
                    <th><i class="fas fa-receipt"></i> Kode</th>
                    <th><i class="fas fa-user"></i> Nama Sales</th>
                    <th><i class="fas fa-cogs"></i> Aksi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="row" items="${list}">
                    <tr>
                        <td>${row.getId()}</td>
                        <td>${row.getUsername()}</td>
                        <td class="action-buttons">
                            <a href="formsalestambah.jsp?id=${row.getId()}" title="Lihat Detail">
                                <button class="btn btn-blue">
                                    <i class="fas fa-eye"></i>
                                </button>
                            </a>
                            <form action="saleshapus.jsp" method="post" style="display:inline;" onsubmit="return confirm('Yakin ingin menghapus transaksi ini?')">
                                <input type="hidden" name="id" value="${row.getId()}">
                                <button type="submit" class="btn btn-red" title="Hapus Transaksi">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="btn-group" style="margin-top: 2rem;">
            <a href="home.view.jsp" class="btn btn-blue">
                <i class="fas fa-arrow-left"></i> Kembali ke Home
            </a>
        </div>
    </main>

    <footer>
        <p><i class="fas fa-store"></i> © 2025 Toko ATK</p>
    </footer>
</div>
</body>
</html>

