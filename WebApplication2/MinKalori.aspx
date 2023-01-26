<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MinKalori.aspx.cs" Inherits="WebApplication2.MinKalori" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style type="text/css">
        .textbox {
            border-radius: 10px;
            border-width: thin;
            border-color: black;
            font-size: 20px;
            margin-top:20px;
            text-align:center;
            background-color:#242D34;
            color:#FFFFFF;
        }
        .anabaslik{
            font-family: Arial, sans-serif;
            font-size: 64px;
            line-height: 1.5;
            font-weight: 100;
            color: #E1E1E1;
        }
        .baslik{
            font-family: Arial, sans-serif;
            font-size: 32px;
            line-height: 1.5;
        }
        .icerik{
            font-family: Arial, sans-serif;
            font-size: 22px;
            line-height: 1.5;
        }
        .buttongirisyesil{
            border-radius: 20px;
            font-size: 20px;
            margin-top:20px;
            padding:10px;
            background-color: #000000;
            color: #34BC6A;
        }
        .buttongiris{
            border-radius: 20px;
            font-size: 20px;
            margin-top:20px;
            padding:10px;
            background-color: #000000;
            color: #E1E1E1;
        }
        .beyazbutton{
            border-radius: 10px;
            font-size: 20px;
            margin-top:20px;
            padding:10px;
            background-color: #E1E1E1;
            color: #000000;
        }
        .buttonsifremiunuttum{
            border-radius: 10px;
            font-size: 20px;
            margin-top:20px;
            padding:10px;
            background-color: #242D34;
            color: #8B8B8B;
            
        }
        .white_text{
            background-color: #000000;
            color: #FFFFFF;
            font-size: 25px;
            text-align:left;
        }
        .blue_text{
            background-color: #000000;
            color: #4454EB;
            font-size: 12px;
            cursor: pointer;
        } 
        div.a{
            text-align:right;
        }
        a:link {
            color: blue;
        }
        a:visited {
            color: purple;
        }
        a:hover {
            color: red;
        }
        a:active {
            color: green;
        }
    </style>
    <title></title>
</head>
<body style="background-color:#242D34">
    <form id="form2" runat="server" style="text-align:center;">
        <div style="display: flex;">
            <div style="flex: 1;">
                <div style="background-color:#A5A5A5;width:80px;height:80px;border-radius:200px;text-align:center;align-items:center;justify-content:center;display:flex;">
                    <asp:ImageButton ID="Geri_Button" Width="50px" ImageUrl="images/Geri.png" runat="server" OnClick="Geri_Button_Click"/>
                </div>
            </div>
            <div style="flex: 1;display: flex; justify-content: center;">
                <div style="font-size: 50px; text-align:center;align-items:center;color:#E1E1E1;>
                    <asp:Label ID="Label18" runat="server" Text="Hesaplamalar"  Height="50px" CssClass="baslik"></asp:Label>
                </div>
            </div>
            <div style="flex: 1;display: flex; justify-content: flex-end;">
                <div style="background-color:#A5A5A5;width:80px;height:80px;border-radius:200px;text-align:center;align-items:center;justify-content:center;display:flex;">
                    <asp:ImageButton ID="Cikis_Button" Width="50px" ImageUrl="images/Cikis.png" runat="server" OnClick="Cikis_Button_Click"/>
                </div>
            </div>
        </div>

        <div style="display: flex; margin-top:150px;flex-wrap: nowrap;">
            <div style="flex: 0 0 30%;">
                <asp:Button ID="BKI_Button" runat="server" Width="80%" Text="Beden Kitle İndeksi" CssClass="buttongiris" OnClick="BKI_Button_Click"/>
                <asp:Button ID="Idealkilo_Button" runat="server" Width="80%" Text="İdeal Kilo" CssClass="buttongiris" OnClick="Idealkilo_Button_Click"/>
                <asp:Button ID="MetabolizmaHizi_Button" runat="server" Width="80%" Text="Bazal Metabolizma Hızı" CssClass="buttongiris" OnClick="MetabolizmaHizi_Button_Click"/>
                <asp:Button ID="YagOrani_Button" runat="server" Width="80%" Text="Vücut Yağ Oranı" CssClass="buttongiris" OnClick="YagOrani_Button_Click"/>
                <asp:Button ID="KalcaOrani_Button" runat="server" Width="80%" Text="Bel Kalça Oranı" CssClass="buttongiris" OnClick="KalcaOrani_Button_Click"/>
                <asp:Button ID="MinKalori_Button" runat="server" Width="80%" Text="Günlük Alınması Gereken Kalori" CssClass="buttongirisyesil" OnClick="MinKalori_Button_Click"/>
                <asp:Button ID="MinProtein_Button" runat="server" Width="80%" Text="Günlük Alınması Gereken Protein" CssClass="buttongiris" OnClick="MinProtein_Button_Click"/>
            </div>
            <div style="background-color:#E1E1E1;border-radius:10px;flex: 0 0 25%;">
                <asp:Label ID="Label3" runat="server" Text="Günlük Alınması Gereken Kalori" Width="60%" Height="50px" CssClass="baslik"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" CssClass="icerik" Text="Günlük alınması gereken miktar kişiden kişiye değişmektedir. Hesaplayıcı, 1 günde harcanan kaloriyi tespit ederken Harris-Benedict prensibini kullanmaktadır. Bu prensipteki en önemli faktörler kişinin kilosu, boyu ve yaşına göre hesaplanan bazal metabolik hıza ilaveten günlük aktivitelerde harcanan enerjiye eşdeğer alınan besin miktarıdır." Height="50px"></asp:Label>
                <br />
                <br />
                <br />
                <br /><br />
            </div>
            <div style="background-color:#000000;margin: auto;border-radius:10px;flex: 0 0 35%;">
                <div style="background-color:#000000;border-radius:10px">
                    <br />
                    <br />
                    <br />
                    <asp:DropDownList CssClass="textbox" Height="50px" Width="60%" ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">Cinsiyetiniz</asp:ListItem>
                        <asp:ListItem Value="1">Erkek</asp:ListItem>
                        <asp:ListItem Value="2">Kadın</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="yaslab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Yaşınız"></asp:TextBox>
                    <asp:TextBox ID="kilolab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Kilonuz"></asp:TextBox>
                    <asp:TextBox ID="boylab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Boyunuz"></asp:TextBox>
                    <asp:DropDownList CssClass="textbox" Height="50px" Width="60%" ID="DropDownList2" runat="server">
                        <asp:ListItem Value="0">Hareketlilik Düzeyiniz</asp:ListItem>
                        <asp:ListItem Value="1">Masa başı bir işte çalışıyorum, fazla hareket etmiyorum</asp:ListItem>
                        <asp:ListItem Value="2">Az hareket ettiğim bir iş yapıyorum, hafif egzersizler yapıyorum</asp:ListItem>
                        <asp:ListItem Value="3">Orta derecede hareket gerektiren bir iş yapıyorum</asp:ListItem>
                        <asp:ListItem Value="4">Çok aktif olduğum bir iş yapıyorum, haftada 5 gün spor yapıyorum</asp:ListItem>
                        <asp:ListItem Value="5">Aşırı düzeyde spor yapıyorum, spor müsabakasına hazırlanıyorum</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="next" runat="server" Width="60%" Text="Hesapla" CssClass="beyazbutton" OnClick="Hesapla_Button_Click"/>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="" Width="60%" Height="50px" CssClass="white_text"></asp:Label>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
