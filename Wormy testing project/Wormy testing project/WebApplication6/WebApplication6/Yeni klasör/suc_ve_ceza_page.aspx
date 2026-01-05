<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suc_ve_ceza_page.aspx.cs" Inherits="WebApplication6.Yeni_klasör.suc_ve_ceza_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Suç ve Ceza</title>
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v6.0.0/css/all.css"
     integrity="sha384-Jcfwbvs3pKe3M3zfm3UHioWBQY1jX5Z9UdjVbReaKxxC6PiTRHTi2LsC5TJKC8QW" crossorigin="anonymous" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <link rel="stylesheet" href="style.css">

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
            <!-- Displaying the cover photo of the book -->
            <img src="../Yeni klasör/frontend-rneklibrary-jssizkod/images/crime.jpg" alt="Photo" class="photo">
            
            <!-- Content details of the book -->
            <div class="content" style="margin-right: 20px">
                <p class="caption">
                    <!-- Book title -->
                    <h3>Crime and Punishment</h3>
                    <br>
                    <p>
                        <!-- Author, Translator, and Publisher details -->
                        Author: Fyodor Dostoevsky - Translator: Ahmet Cemal <br>
                        Publisher: İletişim Yayınları - World Classics Series
                        <!-- Displaying the price of the book -->
                        <h2 style="margin-bottom: 50px;">60TL</h2>
                        <!-- Button to add the book to the cart -->
                        <button class="cart-button" id="btnAddToCart" runat="server" onserverclick="btnAddToCart_ServerClick" type="button">Add to Cart</button>
                        <br /> <asp:Label ID="lblStatus" runat="server" ForeColor="Green" Text=""></asp:Label>
            </div>
            </div>
    </section>
    <section>
        <div class="container" style="text-align: left;">
            <!-- Description of the book -->
            <span style="color: #f6f6f6">
                Crime and Punishment is a masterpiece by Fyodor Dostoyevsky. The story revolves around a poor student named Raskolnikov, who murders a moneylender woman and subsequently experiences internal conflict.
                <br><br>
                According to his theory, extraordinary individuals are not bound by moral rules. However, he faces the pangs of conscience after the murder, and events unfold unexpectedly for him.
                <br><br>
                Crime and Punishment delves deep into the nature of humanity, moral responsibilities, and the relationship between crime and punishment. Dostoyevsky's work stands out for its psychological depth, character analysis, and societal critique.
                <br><br>
                "Once a man has begun to live, he must live to the end, and he must live in a way that justifies the suffering he has caused to others."
                <br><br>
                - Fyodor Dostoyevsky -
            </span>
        </div>
    </section>


  

        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-beta2/js/bootstrap.min.js"></script>


    </form>
</body>
</html>
