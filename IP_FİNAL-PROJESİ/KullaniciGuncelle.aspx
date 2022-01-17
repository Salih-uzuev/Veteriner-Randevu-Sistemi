<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciGuncelle.aspx.cs" Inherits="IP_FİNAL_PROJESİ.KullaniciGuncelle" %>

<!DOCTYPE html>
<html>
	<head>	
		<title>VET_CITY ADMIN</title>
		<link href="admin/css/style.css" rel='stylesheet' type='text/css' />
         <link href="admin/web/css/style.css" rel="stylesheet" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		
		<script>
			function myFunction()
			{
				alert("welcome");
			}
		</script>
	</head>
	<body>
		
			<div class="login-form">
						<form runat="server" method="post">
							<span>
								<asp:TextBox placeholder="ID" class="lock" ID="txtAdminGuncelleID" runat="server"></asp:TextBox>
							</span>
							<span>
					        	<asp:TextBox placeholder="Kullanici Adı" CssClass="lock" ID="txtAdminGuncelleAd" runat="server"></asp:TextBox>
					        </span>
							<span>
					        	<asp:TextBox placeholder="Telefon No"  CssClass="lock" ID="txtAdminGuncelleTelefon" runat="server"></asp:TextBox>
					        </span>
							<span>
					        	<asp:TextBox placeholder="Eposta" CssClass="lock" ID="txtAdminGuncelleEposta" runat="server"></asp:TextBox>
					        </span>
							<span style="margin-top:15px">
					        	<asp:TextBox  placeholder="Şifre" type="password" CssClass="lock" ID="txtAdminGuncelleSifre" runat="server"></asp:TextBox>
					        </span>
							<div class="submit">
								<asp:Button ID="BtnAdminGuncelle" runat="server" Text="Bilgileri Güncelle" OnClick="BtnAdminGuncelle_Click" />
							</div>
							<div class="Remember-me">
								
								
								<span class="forget-pass">
									<asp:Label ID="lblAdminGuncelleBilgi" runat="server" Text=""></asp:Label>
								</span>
									<div class="clear"> </div>
							</div>
							
						</form>
						
						<div class="copy-right">
							
						</div>
			
			</div>
			
			
	</body>
</html>