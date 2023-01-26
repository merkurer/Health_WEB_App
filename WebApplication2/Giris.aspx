<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:#242D34">
    <form id="form1" runat="server" style="text-align:center;">
        <div style="background-color:#000000;margin: auto;width:40%;margin-top:250px;border-radius:10px">
            <div style="background-color:#000000;margin-top:250px;border-radius:10px">
                <br /><br />
                <asp:TextBox ID="Mail" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="E-posta adresiniz"></asp:TextBox>
                <br />
                <asp:TextBox ID="Sifre" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Şifreniz" TextMode="Password"></asp:TextBox>
                <br /><br /><br /><br />
                <asp:Button ID="Giris" runat="server" Width="60%" Text="Giriş Yap" CssClass="buttongiris" OnClick="Giris_Click" />
                <br />
                <asp:Button ID="SifreUnuttum" runat="server" Width="60%" Text="Şifremi Unuttum" CssClass="buttonsifremiunuttum"/>
                <br /><br /><br />
                <asp:Label runat="server" CssClass="white_text" Text="Henüz bir hesabın yok mu? "></asp:Label>
                <a href="Kayit_Ol1.aspx">Kaydol</a>
                <br /><br /><br /><br />
            </div>
        </div>
    </form>
</body>
</html>