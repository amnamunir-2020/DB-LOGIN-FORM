<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="LoginFormLNE.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            width: 136px;
            text-align:center;
            font-size:30px;
        }
        .auto-style3 {
            width: 560px;
        }
        table{
            margin:auto;
            width:300px;
            border:5px black ridge;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td colspan="2">LOGIN-FORM</td>
                </tr>
                <tr>
                    <td >USERNAME</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="UserTextBox" runat="server" Width="215px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" Display="Dynamic" ErrorMessage="Please Correct Username" ForeColor="Purple" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >PASSWORD</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="PasswordTextBox" runat="server" Width="215px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please RightPassword" ForeColor="Purple" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="LoginButton" runat="server" Height="31px" Text="LOGIN" Width="66px" OnClick="LoginButton_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
