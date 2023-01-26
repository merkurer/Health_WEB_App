<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Idealkilo.aspx.cs" Inherits="WebApplication2.WebForm7" %>

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
                <asp:Button ID="Idealkilo_Button" runat="server" Width="80%" Text="İdeal Kilo" CssClass="buttongirisyesil" OnClick="Idealkilo_Button_Click"/>
                <asp:Button ID="MetabolizmaHizi_Button" runat="server" Width="80%" Text="Bazal Metabolizma Hızı" CssClass="buttongiris" OnClick="MetabolizmaHizi_Button_Click"/>
                <asp:Button ID="YagOrani_Button" runat="server" Width="80%" Text="Vücut Yağ Oranı" CssClass="buttongiris" OnClick="YagOrani_Button_Click"/>
                <asp:Button ID="KalcaOrani_Button" runat="server" Width="80%" Text="Bel Kalça Oranı" CssClass="buttongiris" OnClick="KalcaOrani_Button_Click"/>
                <asp:Button ID="MinKalori_Button" runat="server" Width="80%" Text="Günlük Alınması Gereken Kalori" CssClass="buttongiris" OnClick="MinKalori_Button_Click"/>
                <asp:Button ID="MinProtein_Button" runat="server" Width="80%" Text="Günlük Alınması Gereken Protein" CssClass="buttongiris" OnClick="MinProtein_Button_Click"/>
            </div>
            <div style="background-color:#E1E1E1;border-radius:10px;flex: 0 0 25%;">
                <asp:Label ID="Label3" runat="server" Text="İdeal Kilo Nedir?" Width="60%" Height="50px" CssClass="baslik"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" CssClass="icerik" Text="İdeal kilo, kişinin boy ve cinsiyetine göre sahip olması gereken kilo aralığıdır. İdeal kilo, kadın ve erkeklerde farklı aralıklara sahiptir. Dünya Sağlık Örgütü, ideal kilo hesaplamasında BMI (Vücut Kitle İndeksi) ‘dan yararlanmaktadır." Height="50px"></asp:Label>
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
                    <asp:TextBox ID="boylab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Boyunuz"></asp:TextBox>
                    <asp:TextBox ID="kilolab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Kilonuz"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="next" runat="server" Width="60%" Text="Hesapla" CssClass="beyazbutton" OnClick="Hesapla_Button_Click"/>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="" Width="60%" Height="50px" CssClass="white_text"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="" Width="60%" Height="50px" CssClass="white_text"></asp:Label>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
