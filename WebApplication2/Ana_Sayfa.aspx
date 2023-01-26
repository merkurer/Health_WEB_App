<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ana_Sayfa.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:#242D34">
    <form id="form1" runat="server">
        <div style="margin:25px;">
            <div style="background-color:#A5A5A5;width:80px;height:80px;border-radius:200px;text-align:center;float:right;align-items:center;justify-content:center;display:flex;">
                <asp:ImageButton ID="Cikis_Button" Width="50px" ImageUrl="images/Cikis.png" runat="server" OnClick="Cikis_Button_Click" />
            </div>
        </div>
        <div style="margin:auto;text-align:center;margin-top:100px;">
            <div style="background-color:#A5A5A5;width:400px;height:600px;display: inline-block;border-radius:20px;text-align:center;">
                <div style="background-color:#E1E1E1;width:400px;height:400px;display: inline-block;border-radius:20px;text-align:center;align-items: center;justify-content: center;display: flex;">
                    <asp:ImageButton ID="Hesaplamalar_Button" Width="200px" ImageUrl="images/Hesap_makinesi.png" runat="server" OnClick="Hesaplamalar_Button_Click" />
                </div>
                <div style="text-align:center;font-size:30px;font-family: sans-serif;">
                    <p style="margin-top:80px;">Hesaplamalar</p>
                </div>            
            </div>
            <div style="background-color:#A5A5A5;width:400px;height:600px;display: inline-block;border-radius:20px;text-align:center; margin:50px">
                <div style="background-color:#E1E1E1;width:400px;height:400px;display: inline-block;border-radius:20px;text-align:center;align-items: center;justify-content: center;display: flex;">
                    <asp:ImageButton ID="Kalori_Button" Width="200px" ImageUrl="images/Kalori.png" runat="server" OnClick="Kalori_Button_Click" />
                </div>
                <div style="text-align:center;font-size:30px;font-family: sans-serif;">
                    <p style="margin-top:80px;">Kaç Kalori?</p>
                </div>            
            </div>
            <div style="background-color:#A5A5A5;width:400px;height:600px;display: inline-block;border-radius:20px;text-align:center;">
                <div style="background-color:#E1E1E1;width:400px;height:400px;display: inline-block;border-radius:20px;text-align:center;align-items: center;justify-content: center;display: flex;">
                    <asp:ImageButton ID="Rapor_Button" Width="200px" ImageUrl="images/Rapor.png" runat="server" OnClick="Rapor_Button_Click" />
                </div>
                <div style="text-align:center;font-size:30px;font-family: sans-serif;">
                    <p style="margin-top:80px;">Günlük Rapor</p>
                </div>            
            </div>
        </div>
        
    </form>
</body>
</html>