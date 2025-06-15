<%-- 
    Document   : userlist.view.jsp
    Created on : 13 Jun 2025, 23.22.10
    Author     : baphien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar User</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div class="container">
    <header>
        <h1><i class="fas fa-users"></i> Daftar User</h1>
    </header>

    <main>
        <!-- Tombol Tambah -->
        <div class="btn-group" style="margin-bottom: 1.5rem;">
            <a href="formusertambah.jsp" class="btn btn-green">
                <i class="fas fa-user-plus"></i> Tambah User Baru
            </a>
        </div>

        <!-- Tabel Data -->
        <table class="data-table">
            <thead>
                <tr>
                    <th><i class="fas fa-user"></i> Username</th>
                    <th><i class="fas fa-id-card"></i> Nama Lengkap</th>
                    <th><i class="fas fa-cogs"></i> Aksi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${list}">
                    <tr>
                        <td>${user.getUsername()}</td>
                        <td>${user.getFullname()}</td>
                        <td class="action-buttons">
                            <a href="formuseredit.jsp?username=${user.getUsername()}" title="Edit">
                                <button class="btn btn-blue"><i class="fas fa-pen"></i></button>
                            </a>
                            <a href="userhapus.jsp?username=${user.getUsername()}" onclick="return confirm('Yakin ingin menghapus user ini?');" title="Hapus">
                                <button class="btn btn-red"><i class="fas fa-trash"></i></button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Tombol Kembali -->
        <div class="btn-group" style="margin-top: 2rem;">
            <a href="home.view.jsp">
                <button class="btn btn-blue"><i class="fas fa-arrow-left"></i> Kembali ke Home</button>
            </a>
        </div>
    </main>

    <footer>
        <p><i class="fas fa-store"></i> © 2025 Toko ATK</p>
    </footer>
</div>
</body>
</html>
