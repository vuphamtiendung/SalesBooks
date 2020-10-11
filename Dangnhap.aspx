<%@ Page Title="" Language="C#" MasterPageFile="~/UC/MasterPage.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 208px;
            height: 19px;
        }
        .auto-style19 {
            height: 19px;
            width: 111px;
        }
        .auto-style21 {
            width: 208px;
            height: 27px;
        }
        .auto-style22 {
            height: 27px;
            width: 111px;
        }
        .auto-style24 {
            width: 208px;
            height: 36px;
        }
        .auto-style25 {
            height: 36px;
            width: 111px;
        }
        .auto-style26 {
            width: 208px;
            height: 30px;
        }
        .auto-style27 {
            height: 30px;
            width: 111px;
        }
        .auto-style29 {
            width: 115px;
        }
        .auto-style30 {
            width: 115px;
            height: 30px;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
        <p class="text-center text-danger">Đăng Nhập</p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập:" CssClass="text-right"></asp:Label>
                </strong>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtTenDN" runat="server" Height="22px" Width="226px"></asp:TextBox>
                </td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Mật khẩu: " CssClass="text-right"></asp:Label>
                </strong>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtMatKhau" runat="server" Height="25px" Width="218px" CssClass="align-text-bottom"></asp:TextBox>
                </td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style27">
                    <strong>
                        <asp:Button ID="btDangNhap" runat="server" OnClick="btDangNhap_Click" Text="Đăng Nhập" Width="119px" Height="29px" />
                    </strong>
                </td>
                <td class="auto-style30"></td>
            </tr>
             <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                <td class="auto-style29">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Doimatkhau.aspx">Đổi Mật khẩu</asp:HyperLink>
                 </td>
            </tr>
             <tr>
                <td colspan="2" rowspan="2">
                    <asp:Label ID="lblThongBaoLoi" runat="server"></asp:Label>
                 </td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style29">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

