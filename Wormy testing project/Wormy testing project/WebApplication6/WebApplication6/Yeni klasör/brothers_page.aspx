<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="brothers_page.aspx.cs" Inherits="WebApplication6.Yeni_klasör.brothers_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>The Brothers Karamazov</title>
<link rel="stylesheet" href="/buna bak/frontendörneklibrary/style.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v6.0.0/css/all.css"
    integrity="sha384-Jcfwbvs3pKe3M3zfm3UHioWBQY1jX5Z9UdjVbReaKxxC6PiTRHTi2LsC5TJKC8QW" crossorigin="anonymous" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
    body {
        background-color: #212529;
    }

    .container {
        display: flex;
        align-items: center;
    }

    .photo {
        max-width: 200px;
        margin-right: 20px;
        margin-top: 100px;
        border: 5px solid #ffffff;
        border-radius: 5px;

    }

    p {

        color: #afaeae;
        font-size: 12px;
    }

    h1,
    h2,
    h3 {
        color: #f6f6f6;
    }

    .caption {
        font-size: 18px;
        color: #f6f6f6;

    }

    .content {
        display: inline;
        margin-left: 50px;
        margin-top: 60px;
    }

    section {

        margin-top: 60px;
        margin-right: auto;
        margin-left: auto;
    }
    
    .cart-button {
        display: inline-block;
        
        font-size: 16px;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
        border: 1px solid #f5f5f5;
        color: #212529;
        background-color: white;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
    }

    .cart-button:hover {
        background-color: #212529;
        color: white;
    }
</style>
<link rel="stylesheet" href="/style.css">
</head>
<body>
    <form id="form1" runat="server" method="post">
       

    <nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top">
        <div class="container">
            <a class="navbar-brand mr-auto" href="../Yeni klasör/frontend-rneklibrary-jssizkod/index2.aspx">
                <img src="../Yeni klasör/frontend-rneklibrary-jssizkod/images/logoooo.png" alt="Logo" height="70" width="100">
            </a>
            <a class="navbar-brand" href="../Yeni klasör/frontend-rneklibrary-jssizkod/index2.aspx">
                <i class="fas fa-home"></i> Home
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav fw-bold">
                    <li class="nav-item">
                        <a class="nav-link" href="../Yeni klasör/frontend-rneklibrary-jssizkod/index2.aspx#library">
                            <i class="fas fa-book-open"></i> Library
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Yeni klasör/frontend-rneklibrary-jssizkod/index2.aspx#content">
                            <i class="fas fa-envelope"></i> Contact
                        </a>
                    </li>
                    <li class="nav-item">
                        <button id="btnLogout" runat="server" onserverclick="btnLogout_ServerClick">
                            <a class="nav-link">
                                <i class="fas fa-sign-out-alt"></i>Logout
                            </a>
                        </button>

                    </li>

                    <li class="nav-item" style="position: relative;">
                        <a class="nav-link" id="off"  href="../Yeni klasör/frontend-rneklibrary-jssizkod/CartGV.aspx">
                            <i class="fa-solid fa-cart-shopping"></i> Shopping
                           
                        </a>
                    </li>


                </ul>

            </div>
        </div>
    </nav>

    <section>
        <div class="container">
            <!-- Displaying the cover photo of the book "The Brothers Karamazov" -->
            <img src="../Yeni klasör/frontend-rneklibrary-jssizkod/images/kramozov.jpg" alt="Photo" class="photo">
            
            <!-- Content details of the book "The Brothers Karamazov" -->
            <div class="content" style="margin-right: 20px">
                <p class="caption">
                    <!-- Book title -->
                    <h3>The Brothers Karamazov</h3>
                    <br>
                    <p>
                        <!-- Author, Translator, and Publisher details -->
                        Author: Fyodor Dostoevsky - Translator: [Translator's Name] <br>
                        Publisher: [Publisher's Name] - World Classics Series
                        <!-- Displaying the price of the book -->
                        <h2 style="margin-bottom: 50px;">60TL</h2>
                        <!-- Button to add the book to the cart -->
                        <button class="cart-button" id="btnAddToCart" runat="server" onserverclick="btnAddToCart_ServerClick" type="button">Add to Cart</button>
                        <br /> <asp:Label ID="lblStatus" runat="server" ForeColor="Green" Text=""></asp:Label>

                    </p>
                </div>
            </div>
    </section>
    <section>
        <div class="container" style="text-align: left;">
            <!-- Description of the book "The Brothers Karamazov" -->
            <span style="color: #f6f6f6">
                The Brothers Karamazov is a profound masterpiece by Fyodor Dostoevsky. The narrative revolves around the tumultuous relationships and moral dilemmas of the Karamazov family. <br><br>
                
                The story delves into the lives of three brothers: Dmitri, Ivan, and Alexei, each representing different aspects of human nature. Their complex interactions, philosophical discussions, and moral struggles are at the core of this monumental work. <br><br>
    
                Fyodor Dostoevsky, in creating The Brothers Karamazov, explores themes of morality, faith, and the human condition. The novel stands as a timeless exploration of the complexities of the human soul. <br><br>
    
                "Above all, don't lie to yourself. The man who lies to himself and listens to his own lie comes to a point that he cannot distinguish the truth within him, or around him, and so loses all respect for himself and for others." <br><br>
                - Fyodor Dostoevsky -
            </span>
        </div>
    </section>

    
    <script src="script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-beta2/js/bootstrap.min.js"></script>

    </form>
</body>
</html>
