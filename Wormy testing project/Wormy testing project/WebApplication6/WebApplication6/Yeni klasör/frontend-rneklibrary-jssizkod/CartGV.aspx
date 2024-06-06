<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CartGV.aspx.cs" Inherits="WebApplication6.Yeni_klasör.frontend_rneklibrary_jssizkod.CartGV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v6.0.0/css/all.css"
     integrity="sha384-Jcfwbvs3pKe3M3zfm3UHioWBQY1jX5Z9UdjVbReaKxxC6PiTRHTi2LsC5TJKC8QW" crossorigin="anonymous" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <link rel="stylesheet" href="style.css">

<title>log outLibrary</title>

<style>
    a{
        text-decoration: none;
        color: #212529;
    }

</style>

</head>
<body>
    <form id="form1" runat="server">
          <nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top">
      <div class="container">
          <a class="navbar-brand mr-auto" href="../frontend-rneklibrary-jssizkod/index2.aspx">
              <img src="images/logoooo.png" alt="Logo" height="70" width="100">
          </a>
          <a class="navbar-brand" href="../frontend-rneklibrary-jssizkod/index2.aspx">
              <i class="fas fa-home"></i> Home
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
              <ul class="navbar-nav fw-bold">
                  <li class="nav-item">
                      <a class="nav-link" href="../frontend-rneklibrary-jssizkod/index2.aspx#library">
                          <i class="fas fa-book-open"></i> Library
                      </a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="../frontend-rneklibrary-jssizkod/index2.aspx#content">
                          <i class="fas fa-envelope"></i> Contact
                      </a>
                  </li>
                  <li class="nav-item">
                      <button id="btnLogout" runat="server" onserverclick="btnLogout_ServerClick">
                          <a class="nav-link" >
                              <i class="fas fa-sign-out-alt"></i> Logout
                          </a>
                      </button>
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

        <section id="home">
            <section class="min-vh-100 d-flex flex-column justify-content-end align-items-center" id="hero-section"
                style="background-image: url(images/kütüp.jpg); background-size: cover;">
                <div class="text-center mt-3" style="margin-bottom:350px;">
                    <asp:Label ID="txtStatus" runat="server" Font-Bold="True" BackColor="WhiteSmoke" BorderStyle="Solid" Font-Size="Larger"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="bookID" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="bookID" HeaderText="bookID" InsertVisible="False" ReadOnly="True" SortExpression="bookID" Visible="false" />
                            <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                        </Columns>
                        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Left" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </div>
            </section>
        </section>

   
    </form>
</body>
</html>
