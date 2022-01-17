<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOlma.aspx.cs" Inherits="IP_FİNAL_PROJESİ.KayitOlma" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kayıt Ol</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/login.css">
    <link href="giris/assets/css/login.css" rel="stylesheet" />
    <script src="giris/gulpfile.js"></script>
</head>
<body>
    <form runat="server">
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
        <div class="container">
            <div class="card login-card">
                <div class="row no-gutters">
                    <div class="col-md-5">
                        <img src="giris/assets/images/cat.jpg" alt="login" class="login-card-img">
                    </div>
                    <div class="col-md-7">
                        <div class="card-body">
                            <div class="brand-wrapper">
                         <img src="giris/assets/images/petpet.jpg" alt="logo" class="logo">
                            </div>
                            <p class="login-card-description">Kayıt Ol</p>
                            
                                <div class="form-group">
                                    <label for="email" class="sr-only">Email</label>
                                    <asp:TextBox ID="txtKayitKullaniciAdi" class="form-control" placeholder="Kullanıcı Adı" runat="server" Height="46px" Width="200px"></asp:TextBox>
                                    
                                </div>
                            <div class="form-group">
                                    <label for="email" class="sr-only">Email</label>
                                    <asp:TextBox ID="txtKayitTelefon" class="form-control" placeholder="Telefon" runat="server" Height="46px" Width="300px"></asp:TextBox>
                                </div>
                            <div class="form-group">
                                    <label for="email" class="sr-only">Email</label>
                                    <asp:TextBox ID="txtKayitEposta" class="form-control" placeholder="Eposta" runat="server" Height="46px" Width="370px"></asp:TextBox>
                                </div>
                                <div class="form-group mb-4">
                                    <label for="password" class="sr-only">Password</label>
                                    <asp:TextBox ID="txtKayitSifre" type="password"  class="form-control" placeholder="Şifre" runat="server" Height="46px" Width="410px"></asp:TextBox>
                                    <asp:Label ID="lblKayitBilgi" runat="server" Text=""></asp:Label>
                                </div>
                            <asp:Button ID="btnKayitGonder" class="btn btn-block login-btn mb-4"  runat="server" Text="Kayıt Ol" Height="46px" Width="465px" OnClick="btnKayitGonder_Click" />
                            
                            <a href="Default.aspx" class="forgot-password-link">Şifremi Hatırlamıyorum?</a>
                            <p class="login-card-footer-text"><a href="Giris.Aspx" class="text-reset">Giriş Yap</a></p>
                            <nav class="login-card-footer-nav">
                                <a href="Giris.aspx">Zaten Hesabım var ?</a>
                                
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </main>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        </form>
</body>

</html>