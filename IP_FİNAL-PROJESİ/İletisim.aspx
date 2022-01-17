<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="IP_FİNAL_PROJESİ.İletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner about-banner">

        <div class="about-heading">
            <div class="container">
                <h2>Bize Ulaşın</h2>
            </div>
        </div>
    </div>
    <!-- contact -->
    <div class="contact-top">
        <!-- container -->
        <div class="container">
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3000.7757094064946!2d32.6580842157234!3d41.22665801390595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x409cab4cb9c64315%3A0x59d8885c84ffe379!2s5000%20Evler%2075.%20Y%C4%B1l%2C%205.%20Sk.%2C%2078020%20Karab%C3%BCk%20Merkez%2FKarab%C3%BCk!5e0!3m2!1str!2str!4v1639216855513!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <div class="mail-grids">
                <div class="col-md-6 mail-grid-left">
                    <h3>Adresimiz</h3>
                    <h5>Belirtilen adres kurumumuza aittir. <span>Adresimiz aşağıda belirtildiği gibidir.</span></h5>
                    <h4>VET CITY</h4>
                    <p>
                        5000 Evler, 75. Yıl
						<span>5. sokak , Kanarya APT 1/8</span>
                        Karabük, 78000
                    </p>
                    <h4>İletişim Bilgileri</h4>
                    <p>
                        Telefon: +90 531 732 70 81
						<span>FAX: 0 (370) 418 93 50</span>
                        E-mail: <a href="UzuevSalah@gmail.com">UzuevSalah@gmail.com</a>
                    </p>
                </div>
                <div class="col-md-6 contact-form">

                    <asp:TextBox ID="txtİletisimAd" placeholder="Ad" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtİletisimEposta" placeholder="Eposta"  runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtİletisimBaslik" placeholder="Başlık" runat="server"></asp:TextBox>
                    <asp:Label ID="lblİletisimBilgi" runat="server" Text =""></asp:Label>
                    <asp:TextBox ID="txtİletisimSorun" placeholder="Sorun" TextMode ="MultiLine" runat="server"></asp:TextBox>
                    <asp:Button ID="btnİletisimGonder" runat="server" Text="Gönder" OnClick="btnİletisimGonder_Click" />
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //container -->
    </div>
    <!-- //contact -->
</asp:Content>
