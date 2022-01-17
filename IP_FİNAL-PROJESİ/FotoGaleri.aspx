<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.Master" AutoEventWireup="true" CodeBehind="FotoGaleri.aspx.cs" Inherits="IP_FİNAL_PROJESİ.FotoGaleri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="web/application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="web/css/style.css" type="text/css" media="all" />
    <link href="web/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="web/css/lightbox.css">
    <link href='//fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
    <script src="web/js/jquery-1.11.1.min.js"></script>
    <script src="web/js/bootstrap.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
            });
        });
    </script>

    <div class="banner about-banner">

        <div class="about-heading">
            <div class="container">
                <h2>Foto Galeri</h2>
            </div>
        </div>
    </div>
    <!-- //banner -->
    <!-- gallery -->
    <div class="gallery">
        <div class="container">
            <div class="gallery-grids">
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g1.jpg" data-lightbox="example-set" data-title="n lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g1.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g2.jpg" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g2.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g3.jpg" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g3.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g4.jpg" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g4.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g5.jpg" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g5.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g6.jpg" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g6.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g1.jpg" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g1.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g2.jpg" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g2.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="col-md-4 gallery-grid">
                    <div class="grid">
                        <figure class="effect-apollo">
                            <a class="example-image-link" href="web/images/g3.jpg" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                <img src="web/images/g3.jpg" alt="" />
                                <figcaption>
                                    <p>Proin vitae luctus dui, sit amet ultricies leo</p>
                                </figcaption>
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="clearfix"></div>
                <script src="web/js/lightbox-plus-jquery.min.js"> </script>
            </div>
        </div>
    </div>


</asp:Content>
