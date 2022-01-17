<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RandevuGuncelle.aspx.cs" Inherits="IP_FİNAL_PROJESİ.RandevuGuncelle" %>

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
								<asp:TextBox placeholder="ID" class="lock" ID="txtRandevuGuncelleID" runat="server"></asp:TextBox>
							</span>
							<span>
					        	<asp:TextBox placeholder="Randevu Tipi" CssClass="lock" ID="txtRandevuTipi" runat="server"></asp:TextBox>
					        </span>
							<span>
					        	<asp:TextBox placeholder="Hayvan Cinsi"  CssClass="lock" ID="txtHayvanCinsi" runat="server"></asp:TextBox>
					        </span>
							
							<div class="submit">
								<asp:Button ID="BtnRandevuGuncelle" runat="server" Text="Bilgileri Güncelle" OnClick="BtnRandevuGuncelle_Click" />
							</div>
							<div class="Remember-me">
								
								
								<span class="forget-pass">
									<asp:Label ID="lblAdminGuncelleBilgiii" runat="server" Text=""></asp:Label>
								</span>
									<div class="clear"> </div>
							</div>
							
						</form>
						
						<div class="copy-right">
							
						</div>
				
			</div>
			
			
	</body>
</html>