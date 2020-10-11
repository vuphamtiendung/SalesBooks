<%@ Page Title="" Language="C#" MasterPageFile="~/UC/MasterPage.master" AutoEventWireup="true" CodeFile="Chitietsach.aspx.cs" Inherits="Chitietsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            width: 7px;
        }
        .auto-style22 {
            height: 19px;
        }
        .auto-style23 {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:datalist runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="dlChiTietSach_ItemDataBound" RepeatColumns="2" Height="368px" Width="754px">

        <ItemTemplate>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style20" rowspan="2"><strong>
                        <asp:Label ID="HinhMinhHoaLabel" runat="server" Text='<%# Eval("HinhMinhHoa") %>' />
                        </strong></td>
                    <td class="auto-style23">&nbsp;</td>
                    <td><strong>
                        <asp:Label ID="MaCDLabel" runat="server" Text='<%# Eval("MaCD") %>' />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td><strong>
                        <asp:Label ID="MaNXBLabel" runat="server" Text='<%# Eval("MaNXB") %>' />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style22" colspan="3"><strong>
                        <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                        </strong></td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:datalist>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString5 %>" SelectCommand="SELECT [HinhMinhHoa], [MaCD], [MaNXB], [MoTa] FROM [SACH]"></asp:SqlDataSource>
</asp:Content>

