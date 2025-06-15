<%-- 
    Document   : home.view.jsp
    Created on : 13 Jun 2025, 23.21.21
    Author     : baphien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Toko ATK</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
    <div class="container">
        <header>
            <h1>Selamat Datang, ${fullname}</h1>
        </header>

        <main>
            <h2 class="section-title">Menu Utama</h2>

            <div class="menu-grid">
                <a href="baranglist.jsp" class="menu-card">
                    <i class="fas fa-box fa-2x"></i>
                    <h3>Daftar Barang</h3>
                </a>
                <a href="saleslist.jsp" class="menu-card">
                    <i class="fas fa-receipt fa-2x"></i>
                    <h3>Daftar Penjualan</h3>
                </a>
                <a href="userlist.jsp" class="menu-card">
                    <i class="fas fa-users fa-2x"></i>
                    <h3>Daftar User</h3>
                </a>
            </div>

            <div class="btn-group" style="margin-top: 2rem;">
                <a href="logout.jsp" class="btn btn-red">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </a>
            </div>
        </main>

        <footer>
            <p>© 2025 Toko ATK</p>
        </footer>
    </div>
</body>
</html>
