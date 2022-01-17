<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="İcerikGuncelle.aspx.cs" Inherits="IP_FİNAL_PROJESİ.İcerikGuncelle" %>

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
								<asp:TextBox placeholder="ID" class="lock" ID="txtAdminİcerikGuncelleID" runat="server"></asp:TextBox>
							</span>
							<span>
					        	<asp:TextBox placeholder="Başlık" CssClass="lock" ID="txtAdminİcerikGuncelleBaslik" runat="server"></asp:TextBox>
					        </span>
							<span>
					        	<asp:TextBox placeholder="İçerik" TextMode="MultiLine"  CssClass="lock" ID="txtAdminİcerikGuncelleİcerik" runat="server" Height="140px" Width="284px"></asp:TextBox>
					        </span>
							<div class="submit">
								<asp:Button ID="BtnAdminİcerikGuncelle" runat="server" Text="Bilgileri Güncelle" OnClick="BtnAdminİcerikGuncelle_Click" />
							</div>
							<div class="Remember-me">
								
								
								<span class="forget-pass">
									<asp:Label ID="lblAdminİcerikGuncelleBilgi" runat="server" Text=""></asp:Label>
								</span>
									<div class="clear"> </div>
							</div>
							
						</form>
						
						<div class="copy-right">
							
						</div>
			
			</div>
			
			
	</body>
</html>