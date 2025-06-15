<%-- 
    Document   : formuseredit.view.jsp
    Created on : 14 Jun 2025, 07.53.08
    Author     : baphien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Edit User</title>
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="container">
        <header>
            <h1>Edit User</h1>
        </header>

        <main>
            <form action="useredit.jsp" method="post" class="form-layout">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" value="${user.username}" readonly>
                </div>

                <div class="form-group">
                    <label for="fullname">Nama Lengkap</label>
                    <input id="fullname" name="fullname" value="${user.fullname}" required>
                </div>

                <div class="form-group">
                    <label for="password">Password Baru</label>
                    <input id="password" name="password" placeholder="Kosongkan jika tidak ingin mengganti" type="password">
                </div>

                <div class="btn-group" style="margin-top: 1.5rem;">
                    <button type="submit" class="btn btn-green"><i class="fas fa-save"></i> Simpan Perubahan</button>
                    <a href="userlist.jsp" class="btn btn-red"><i class="fas fa-arrow-left"></i> Batal</a>
                </div>
            </form>
        </main>

        <footer>
            <p>© 2025 Toko ATK</p>
        </footer>
    </div>
</body>
</html>
