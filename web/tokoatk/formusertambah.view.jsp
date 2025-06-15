<%-- 
    Document   : formusertambah.view.jsp
    Created on : 13 Jun 2025, 23.23.27
    Author     : baphien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Tambah User</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div class="container">
    <header>
        <h1><i class="fas fa-user-plus"></i> Tambah User Baru</h1>
    </header>

    <main>
        <form action="usertambah.jsp" method="post" class="form-layout">
            <div class="form-group">
                <label for="username"><i class="fas fa-user"></i> Username</label>
                <input id="username" name="username" required>
            </div>

            <div class="form-group">
                <label for="fullname"><i class="fas fa-id-card"></i> Nama Lengkap</label>
                <input id="fullname" name="fullname" required>
            </div>

            <div class="form-group">
                <label for="password"><i class="fas fa-lock"></i> Password</label>
                <input id="password" name="password" type="password" required>
            </div>

            <div class="btn-group" style="margin-top: 1.5rem;">
                <button type="submit" class="btn btn-green"><i class="fas fa-check"></i> Simpan</button>
                <a href="userlist.jsp" class="btn btn-red"><i class="fas fa-times"></i> Batal</a>
            </div>
        </form>
    </main>

    <footer>
        <p><i class="fas fa-store"></i> © 2025 Toko ATK</p>
    </footer>
</div>
</body>
</html>
