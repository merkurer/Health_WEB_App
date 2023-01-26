<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayit_Ol2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

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
        .buttongiris{
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
            font-size: 12px;
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
        <div style="background-color:#000000;margin: auto;width:40%;margin-top:250px;border-radius:10px">
            <div style="background-color:#000000;margin-top:250px;border-radius:10px">
                <asp:TextBox ID="boy" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Boyunuz"></asp:TextBox>
                <asp:TextBox ID="kilo" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Kilonuz"></asp:TextBox>
                <asp:TextBox ID="cinsiyet" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Cinsiyetiniz"></asp:TextBox>
                <asp:TextBox ID="hedef_kilo" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Hedef Kilonuz"></asp:TextBox>
                <br />
                <asp:DropDownList CssClass="textbox" Height="50px" Width="60%" ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">Hareketlilik Düzeyiniz</asp:ListItem>
                    <asp:ListItem Value="1">Masa başı bir işte çalışıyorum, fazla hareket etmiyorum</asp:ListItem>
                    <asp:ListItem Value="2">Az hareket ettiğim bir iş yapıyorum, hafif egzersizler yapıyorum</asp:ListItem>
                    <asp:ListItem Value="3">Orta derecede hareket gerektiren bir iş yapıyorum</asp:ListItem>
                    <asp:ListItem Value="4">Çok aktif olduğum bir iş yapıyorum, haftada 5 gün spor yapıyorum</asp:ListItem>
                    <asp:ListItem Value="5">Aşırı düzeyde spor yapıyorum, spor müsabakasına hazırlanıyorum</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <a href="Giris.aspx">Giriş Ekranına Dön</a>
                <br />
                <asp:Button ID="Kayit_Ol" runat="server" OnClick="Kayit_Ol_Button_Click" Width="60%" Text="Kayıt Ol" CssClass="buttongiris"/>
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>