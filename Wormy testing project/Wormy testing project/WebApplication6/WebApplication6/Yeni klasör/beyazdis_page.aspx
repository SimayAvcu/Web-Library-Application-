<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="beyazdis_page.aspx.cs" Inherits="WebApplication6.Yeni_klasör.frontend_rneklibrary_jssizkod.beyazdis_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Beyaz Diş</title>
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
            <!-- Displaying the cover photo of the book "White Fang" -->
            <img src="../Yeni klasör/frontend-rneklibrary-jssizkod/images/beyaz-dis.jpg" alt="Photo" class="photo">
            
            <!-- Content details of the book "White Fang" -->
            <div class="content" style="margin-right: 20px">
                <p class="caption">
                    <!-- Book title -->
                    <h3>White Fang</h3>
                    <br>
                    <p>
                        <!-- Author, Translator, and Publisher details -->
                        Author: Jack London - Translator: Yiğit Yavuz <br>
                        Publisher: İletişim Yayınları - World Classics Series
                        <!-- Displaying the price of the book -->
                        <h2 style="margin-bottom: 50px;">40TL</h2>
                        <!-- Button to add the book to the cart -->
                        <button class="cart-button" id="btnAddToCart" runat="server" onserverclick="btnAddToCart_ServerClick" type="button">Add to Cart</button>
                        <br /> <asp:Label ID="lblStatus" runat="server" ForeColor="Green" Text=""></asp:Label>
                    </p>
                </div>
            </div>
    </section>
    <section>
        <div class="container" style="text-align: left;">
            <!-- Description of the book "White Fang" -->
            <span style="color: #f6f6f6">
                White Fang offers a critical perspective on both the natural world and the ruthless behavior of humans from the viewpoint of a wild animal. <br><br>
                
                Set in the harsh natural conditions of Alaska, White Fang tells a breathtaking adventure story. Born as the offspring of a half-dog mother and a wolf father, White Fang begins a life overshadowed by his uniqueness. <br><br>
    
                This magnificent creature, captivating with both intelligence and appearance, encounters the torment of both humans and animals and pays a price at every moment. Seeking survival by relying on instincts, White Fang gradually loses trust in all living beings and becomes trapped between the wild and domesticated life. In creating one of literature's most genuine animal characters, Jack London discusses concepts such as hostility, morality, trust, mercy, and love. <br><br>
    
                "Yet savagery was the essence of White Fang's being. He symbolized that wild nature; he was its incarnate form." <br><br>
                - Jack London -
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
