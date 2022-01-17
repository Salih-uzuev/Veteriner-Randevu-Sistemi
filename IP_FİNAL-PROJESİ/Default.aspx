<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IP_FİNAL_PROJESİ.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="banner">

        <div class="container">

            <div class="slider">

                <div class="callbacks_container">
                    <div class="w3layouts-banner-slider">
                        <ul class="rslides callbacks callbacks1" id="slider4">
                            <li>
                                <div class="agileits-banner-info">
                                    <h3>Foto Galerimize Göz Attınız Mı ? <span>Butona Tıklayarak Detaylı Bilgiye Ulaşabilirsiniz.</span></h3>
                                    <div class="w3-button">
                                        <a href="FotoGaleri.aspx">Daha Fazlası</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="agileits-banner-info">
                                    <h3>Hızlı Randevu Sistemiyle Tanışın<span>Butona Tıklayarak Randevu alabiliriniz </span></h3>
                                    <div class="w3-button">
                                        <a href="RandevuAl.aspx">Randevu Al</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <script src="web/js/responsiveslides.min.js"></script>
                    <script>
                        
                        $(function () {
                            
                            $("#slider4").responsiveSlides({


                                auto: true,
                                pager: false,
                                nav: true,
                                speed: 500,
                                namespace: "callbacks",
                                before: function () {
                                    $('.events').append("<li>before event fired.</li>");
                                },
                                after: function () {
                                    $('.events').append("<li>after event fired.</li>");
                                }

                            });



                        });
                    </script>
                </div>
            </div>
        </div>
    </div>



    <div class="welcome">
        <div class="container">
            <div class="w3ls-heading">
                <h2>VET CITY'e HOŞGELDİNİZ</h2>
            </div>
            <div class="welcome-grids">
                <div class="col-md-6 agile-welcome-grid">
                    <div class="grid">
                        <div class="col-md-6 agileits-left">
                            <figure class="effect-chico">
                                <img src="web/images/2.jpg" alt="" />
                                <figcaption>
                                    <h4>Sokak Kedileri</h4>
                                    <p>Sokak kedileri ev kedilerine göre 5 yıl az yaşar.</p>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="col-md-6 agileits-left">
                            <figure class="effect-chico">
                                <img src="web/images/3.jpg" alt=" " />
                                <figcaption>
                                    <h4>Evcil Kediler</h4>
                                    <p>Doğru beslenme ve sağlıklı bir yaşam ile beraber 15 yıl yaşar.</p>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-6 agileinfo-welcome-right">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                    <h4><%# Eval("baslik") %></h4>
                    
                    <p><%# Eval("icerik") %></p>
                            </ItemTemplate>
                    </asp:Repeater>

                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="services">
        <div class="container">
            <div class="w3ls-heading">
                <h3>Hizmetlerimiz</h3>
            </div>
            <div class="wthree-services-grids">
                <div class="col-md-6 w3ls-about-left">
                    <div class="agileits-icon-grid">
                        <div class="icon-left hvr-radial-out">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </div>
                        <div class="icon-right">
                            <h5>Online Randevu Sistemi</h5>
                            <p>Hızlı ve Kolay randevu için bizleri tercih edebilirsiniz.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="agileits-icon-grid">
                        <div class="icon-left hvr-radial-out">
                            <i class="fa fa-heart" aria-hidden="true"></i>
                        </div>
                        <div class="icon-right">
                            <h5>Geri Bildirimlerinizi Önemsiyoruz</h5>
                            <p>"İletişim" Sayfasından bize iletmiş olduğunuz tüm sorunları dikkate alarak çözüm yolları arıyoruz.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="agileits-icon-grid">
                        <div class="icon-left hvr-radial-out">
                            <i class="fa fa-paper-plane" aria-hidden="true"></i>
                        </div>
                        <div class="icon-right">
                            <h5>Sosyal Medya</h5>
                            <p>VET_CITY olarak tüm sosyal medya platformlarından bizleri takip edebilirsiniz.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-6 w3ls-about-left">
                    <div class="agileits-icon-grid">
                        <div class="icon-left hvr-radial-out">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </div>
                        <div class="icon-right">
                            <h5>Giriş & Kayıt olma</h5>
                            <p>Online & Hızlı randevu sisteminden kullanabilmek için kayıt olmanız gerekmektedir.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="agileits-icon-grid">
                        <div class="icon-left hvr-radial-out">
                            <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                        </div>
                        <div class="icon-right">
                            <h5>Blog Sayfamız</h5>
                            <p>Paylaştığımız Makalelerde, yorumlarınızı yazarak tüm kullanıcıları kendi bilginizden yararlanmasını sağlayın.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="agileits-icon-grid">
                        <div class="icon-left hvr-radial-out">
                            <i class="fa fa-bell" aria-hidden="true"></i>
                        </div>
                        <div class="icon-right">
                            <h5>Tedavileri Paylaştığımız "Youtube" Kanalımızı takip edebilirsiniz</h5>
                            <p>Tedavi esnasında gerçekleşen eğlenceleri anları, evcil hayvanlara yaptığımız tedaviler, bilgilendirmeleri takip edip zili açmayı unutmayınız.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
   
   
</asp:Content>
