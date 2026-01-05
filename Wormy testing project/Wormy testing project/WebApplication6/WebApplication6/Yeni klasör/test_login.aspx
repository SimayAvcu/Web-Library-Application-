<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test_login.aspx.cs" Inherits="WebApplication6.Yeni_klasör.test_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v6.0.0/css/all.css"
    integrity="sha384-Jcfwbvs3pKe3M3zfm3UHioWBQY1jX5Z9UdjVbReaKxxC6PiTRHTi2LsC5TJKC8QW" crossorigin="anonymous" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #212529;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    a {
        text-decoration: none;
        color: #212529;

    }

    .login-container {
        background-color: #f6f6f6;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 500px;
    }

    .login-container h2 {
        text-align: center;
        color: #212529;
    }

    .login-form {
        display: flex;
        flex-direction: column;
    }

    .form-group {
        margin-bottom: 15px;
        margin-left: auto;
        margin-right: auto;
        padding: 10px;
    }

    .form-group label {
        font-size: 14px;
        color: #212529;
        margin-bottom: 5px;
        width: 400px;
        display: block;
    }

    .form-group input {
        width: 100%;
        padding: 8px;
        font-size: 16px;
        border: 1px solid #cccccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .create {

        color: #212529;
        padding: 10px;
        font-size: 16px;
        font-weight: bold;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .submit {
        background-color: #212529;
        color: #f6f6f6;
        padding: 10px;
        font-size: 16px;
        font-weight: bold;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }



    .submit:hover {
        background-color: #000000;
    }
</style>
<link rel="stylesheet" href="/style.css">
</head>
<body>
    <form id="form1" runat="server" method="post">
         <nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top">
     <div class="container">
         <a class="navbar-brand mr-auto" href="../Yeni klasör/frontend-rneklibrary-jssizkod/index.aspx">
             <img src="../Yeni klasör/frontend-rneklibrary-jssizkod/images/logoooo.png" alt="Logo" height="70" width="100">
         </a>
         <a class="navbar-brand" href="../Yeni klasör/frontend-rneklibrary-jssizkod/index.aspx">
             <i class="fas fa-home"></i> Home
         </a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
             aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
             <ul class="navbar-nav fw-bold">
                 <li class="nav-item">
                     <a class="nav-link" href="../Yeni klasör/frontend-rneklibrary-jssizkod/index.aspx#library">
                         <i class="fas fa-book-open"></i> Library
                     </a>
                 </li>

                 <li class="nav-item">
                     <a class="nav-link" href="../Yeni klasör/frontend-rneklibrary-jssizkod/index.aspx#content">
                         <i class="fas fa-envelope"></i> Contact
                     </a>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link" href="#üst" target="_self">
                         <i class="fas fa-sign-in-alt"></i> Login
                     </a>
                 </li>

                 <li class="nav-item" style="position: relative;">
                     <a class="nav-link" id="off" href="#üst">
                         <i class="fa-solid fa-cart-shopping"></i> Shopping
                     </a>
                 </li>


             </ul>

         </div>
     </div>
 </nav>
 <div class="login-container">
     <h2>Login</h2>
     <form class="login-form" action="login-action" method="post" autocomplete="on">
         <div class="form-group">
             <label for="username">Username:</label>
             <input id="txtUsername" runat="server" type="text" name="username" required>
         </div>

         <div class="form-group">
             <label for="password">Password:</label>
             <input id="txtPassword" runat="server" type="password" name="password" required>
         </div>

         <div class="form-group">
             <button id="btnLogin" runat="server" onserverclick="btnLogin_ServerClick" class="submit" type="submit">Login</button>
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
         </div>

         <div class="form-group">
             <button class="create" type="button"><a href="./test_register.aspx">Create an Account?</a></button> <%--change this to aspx--%>
       
         </div>
       
     </form>
 </div>


 <script src="script.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-beta2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
