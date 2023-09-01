<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="sql_server_database_connection.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 90px;
        }
        .auto-style5 {
            width: 100px;
        }
        .auto-style6 {
            width: 173px;
        }
        .auto-style7 {
            width: 89px;
        }
        .auto-style8 {
            width: 192px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="Firstname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Lastname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="city" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Text="Update" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style3" Text="View" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Text="Enter id for Update"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="id" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
