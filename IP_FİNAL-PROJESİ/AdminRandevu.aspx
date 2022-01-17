<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRandevu.aspx.cs" Inherits="IP_FİNAL_PROJESİ.AdminRandevu" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Paneli</title>
    <link href="web/css/bootstrap.css" rel="stylesheet" />

    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #111;
                }

        .active {
            background-color: #04AA6D;
        }
    </style>
</head>
<body>
    <form runat="server" style="margin-top: 15px">
    <ul>
         <li><a href="Admin.aspx">Kullanici Verileri</a></li>
        <li><a href="Adminİletisim.aspx">İletişim Verileri</a></li>
        <li><a href="AdminRandevu.aspx">Randevu Verileri</a></li>
        <li><a href="Adminİcerik.aspx">İçerik & Metin Güncelleme</a></li>
        <li style="float: right"><asp:Label  ID="lblAdminGirisBilgi" runat="server" Text="" BackColor="Yellow" ></asp:Label> </li>
        <asp:Button style="float: right" ID="BtnAdminCikiss" CssClass="btn btn-danger" runat="server" Text="Çıkış Yap" OnClick="BtnAdminCikiss_Click"/>
    </ul>
    
        <div>
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Kullanıcı Adı</th>
                    <th>Eposta</th>
                    <th>Telefon No</th>
                    <th>Randevu Tipi</th>
                    <th>Hayvan Cinsi</th>
                    <th>Randevu Günü</th>
                    <th>Randevu Alınma Günü</th>
                    <th>Sil</th>
                    <th>Güncelle</th>

                    
                </tr>


                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval ("ID") %></th>
                            <td><%# Eval ("ad") %></td>
                            <td><%# Eval ("eposta") %></td>
                            <th><%# Eval ("telNo") %></th>
                            <th><%# Eval ("randevu_tipi") %></th>
                            <td><%# Eval ("hayvan_cinsi") %></td>
                            <td><%# Eval ("tarih") %></td>
                            <td><%# Eval ("trhRandevu") %></td>
                            <td><asp:HyperLink NavigateUrl='<%# "RandevuSil.aspx?ID=" +Eval("ID") %>' ID="hypAdminSil" CssClass="btn btn-danger"  runat="server">Sil</asp:HyperLink> </td>
                            <td><asp:HyperLink NavigateUrl='<%# "RandevuGuncelle.aspx?ID=" +Eval("ID") %>' ID="hypAdminGuncelle" CssClass="btn btn-success" runat="server">Guncelle</asp:HyperLink> </td>
                            

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>


            </table>
        </div>
    </form>

</body>
</html>