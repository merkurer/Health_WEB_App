<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rapor.aspx.cs" Inherits="WebApplication2.WebForm6" %>

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
            font-size: 50px;
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
                    <asp:Label ID="Label18" runat="server" Text="Günlük Rapor"  Height="50px" CssClass="baslik"></asp:Label>
                </div>
            </div>
            <div style="flex: 1;display: flex; justify-content: flex-end;">
                <div style="background-color:#A5A5A5;width:80px;height:80px;border-radius:200px;text-align:center;align-items:center;justify-content:center;display:flex;">
                    <asp:ImageButton ID="Cikis_Button" Width="50px" ImageUrl="images/Cikis.png" runat="server" OnClick="Cikis_Button_Click"/>
                </div>
            </div>
        </div>
        <div style="display: flex;margin-top:70px;flex-wrap: nowrap;">
            <div style="flex:1;flex: 0 0 35%;">
                <div style="color: #E1E1E1;">
                    <asp:Label ID="Label3" runat="server" Text="Bilgilerim" Width="60%" Height="50px" CssClass="baslik"></asp:Label>
                </div>
                <div style="background-color:#000000;margin: auto;border-radius:10px;flex: 0 0 35%;margin-top:30px;margin-left:100px;">
                    <div style="background-color:#000000;border-radius:10px">
                        <br />
                        <br />
                        <br />
                        <asp:TextBox ID="yemeklab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder=" İsim: Bünyamin"></asp:TextBox>
                        <asp:TextBox ID="kalorilab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Soyisim: Hamidioğlu"></asp:TextBox>
                        <asp:TextBox ID="karbonhidratlab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Kilo: 73"></asp:TextBox>
                        <asp:TextBox ID="proteinlab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Boy: 183"></asp:TextBox>
                        <asp:TextBox ID="yaglab" runat="server" Width="60%" Height="50px" CssClass="textbox" placeholder="Yaş: 21"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <div style ="flex:1">

            </div>
        </div>
    </form>
</body>
</html>