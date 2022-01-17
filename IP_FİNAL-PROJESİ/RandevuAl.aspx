<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RandevuAl.aspx.cs" Inherits="IP_FİNAL_PROJESİ.RandevuAl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Template</title>
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
                            <p class="login-card-description">Randevu Al</p>
                            
                                <div class="form-group">
                                    
                                    <asp:TextBox ID="txtRandevuAd" class="form-control" placeholder="Ad" runat="server" Height="46px" Width="200px"></asp:TextBox>
                                </div>
                             
                              
                            <div class="form-group">
                                    
                                    <asp:TextBox ID="txtRandevuEposta" class="form-control" placeholder="Eposta" runat="server" Height="46px" Width="300px"></asp:TextBox>
                                </div>
                            <div class="form-group">
                                    
                                    <asp:TextBox ID="txtRandevuTelefon" class="form-control" placeholder="Telefon" runat="server" Height="46px" Width="370px" ></asp:TextBox>
                                </div>
                           
                                <div class="form-group mb-4">
                                     
                                    <asp:TextBox ID="txtRandevuTarih" Class="form-control" placeholder="Randevu Tarihi Seçiniz" runat="server" Height="46px" Width="370px" TextMode="DateTimeLocal"></asp:TextBox>
                                    <asp:Calendar ID="Calendar1" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                        <NextPrevStyle VerticalAlign="Bottom" />
                                        <OtherMonthDayStyle ForeColor="#808080" />
                                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                        <SelectorStyle BackColor="#CCCCCC" />
                                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <WeekendDayStyle BackColor="#FFFFCC" />
                                     </asp:Calendar>
                                </div>
                            <div class="form-group">
                                <asp:Label ID="lblRandevuTipi" runat="server" Text="">Randevu Tipini Seçiniz</asp:Label>
                                <asp:DropDownList class="form-control" ID="drpRandevuTipi" runat="server" Height="46px" Width="370px"></asp:DropDownList>
                                </div>
                            <div class="form-group">
                                   <asp:Label ID="lblRandevuHayvanTipi" runat="server" Text="Hayvan Türünü Seçiniz"></asp:Label>
                                   <asp:DropDownList class="form-control" ID="drpRandevuHayvanTipi" runat="server" Height="46px" Width="370px"></asp:DropDownList>
                                   <asp:Label ID="lblRandevuBilgi" runat="server" Text=""></asp:Label>
                                </div>

                            <asp:Button ID="BtnRandevuGonder" class="btn btn-block login-btn mb-4"  runat="server" Text="Randevu Al" Height="46px" Width="465px" OnClick="BtnRandevuGonder_Click" />

                            <a href="Default.aspx" class="forgot-password-link">Ana Sayfaya Dön</a>
                           
                            
                           
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