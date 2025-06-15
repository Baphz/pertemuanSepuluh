<%-- 
    Document   : formlogin.view.jsp
    Created on : 13 Jun 2025, 23.19.51
    Author     : baphien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Login - Toko ATK</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <div class="login-wrapper">
        <div class="login-card">
            <h2><i class="fas fa-lock"></i> Login</h2>

            <%-- Tampilkan pesan error jika ada --%>
            <%
                String loginError = (String) session.getAttribute("loginError");
                if (loginError != null) {
            %>
                <div class="alert"><%= loginError %></div>
            <%
                    session.removeAttribute("loginError");
                }
            %>

            <form action="formlogin.jsp" method="post" class="login-form">
                <label for="username">Username</label>
                <input name="username" type="text" id="username" placeholder="Masukkan username" required>

                <label for="password">Password</label>
                <input name="password" type="password" id="password" placeholder="Masukkan password" required>

                <button type="submit" class="btn btn-blue"><i class="fas fa-sign-in-alt"></i> Login</button>
            </form>
        </div>
    </div>
</body>
</html>
