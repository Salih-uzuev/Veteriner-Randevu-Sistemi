<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="İletisimGuncelle.aspx.cs" Inherits="IP_FİNAL_PROJESİ.İletisimGuncelle" %>

<!DOCTYPE html>
<html>
<head>
<title>ADMİN GÜNCELLEME PANELİ</title>
<link href="iletisim/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Inscription and login forms,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link href="iletisim/css/popuo-box.css" rel="stylesheet" />
    <link href="iletisim/css/style.css" rel="stylesheet" />
    <script src="iletisim/js/jquery.min.js"></script>
    <script src="iletisim/js/jquery.magnific-popup.js"></script>

<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Copse|Roboto' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
<!--/start-main-->
<div class="main">
	<div class="wrap">
	<!--/start-topo-one-->
	<div class="top-one">
	<!--/start-login-->
	<div class="login-one">
		<div class="create-account">
			<div class="login-head">
					<h2>BİLGİ GÜNCELLEME PANELİ</h2>
					<span class="line">
						<span class="sub-line"></span>
					</span>

			</div>
				<form runat="server">
					<asp:TextBox placeholder="ID" ID="txtGuncellemeID" runat="server"></asp:TextBox>
					<asp:TextBox style="margin-top:10px"  placeholder="Ad"  ID="txtGuncelleAd" runat="server" ></asp:TextBox>
					<asp:TextBox style="margin-top:10px"  placeholder="Eposta" ID="txtGuncelleEposta" runat="server"></asp:TextBox>
					<asp:TextBox style="margin-top:10px"  placeholder="Başlık" ID="txtGuncelleBaslik" runat="server" Height="60px"></asp:TextBox>
					<asp:TextBox style="margin-top:10px"  placeholder="Sorun" ID="txtGuncelleSorun" runat="server"></asp:TextBox>
					
				
					
					<asp:Button ID="BtnGuncellemeİletisim"  runat="server" Text="Bilgileri Güncelle" OnClick="BtnGuncellemeİletisim_Click" />

					<!-- pop-up-box -->  
				<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
				<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!--//pop-up-box -->
				<div id="small-dialog2" class="mfp-hide">
				<div class="signup">
					<h3>Signup</h3>
					<h4><a href="#">let's get started</a></h4>
					<p>Email</p>
					<input type="text" class="email" placeholder="Email adress" required=""/>
					<p>Password</p>
					<input type="password" placeholder="Password" required=""/>
					<div class="p-container">
					<label class="checkbox two"><input type="checkbox" name="checkbox" checked><i></i>Keep me logged in</label>
				</div>
					<input type="submit"  value="LOG IN"/>
				</div>
			</div>	
			<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
            </script>
					
		</div>
		</form>
		<div class="clear"> </div>
		<h5> <a  class="signup play-icon popup-with-zoom-anim" href="#small-dialog2"></a></h5>
	</div>
	</div>

		</div>
	</div>
</div>
	<!--//End-login-form-->
	<!--start-copyright-->
   		<div class="copy-right">
   			<div class="wrap">
				
		</div>
	</div>
	<!--//end-copyright-->
	
</body>
</html>