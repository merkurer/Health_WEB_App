<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayit_Ol1.aspx.cs" Inherits="WebApplication2.Kayit_Ol1" %>

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
                <asp:TextBox ID="adlab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Adınız"></asp:TextBox>
                <asp:TextBox ID="soyadlab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Soyadınız"></asp:TextBox>
                <asp:TextBox ID="yaslab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Yaşınız"></asp:TextBox>
                <asp:TextBox ID="maillab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="E-posta Adresiniz"></asp:TextBox>
                <asp:TextBox ID="sifrelab" runat="server" TextMode="Password" Width="60%" Height="50px" CssClass="textbox" placeholder="Şifreniz"></asp:TextBox>
                <br />
                <br />
                <a href="Giris.aspx">Giriş Ekranına Dön</a>
                <br />
                <asp:Button ID="next" runat="server" OnClick="Button1_Click" Width="60%" Text="Sonraki" CssClass="buttongiris"/>
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
