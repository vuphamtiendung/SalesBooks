<%@ Page Title="" Language="C#" MasterPageFile="~/UC/MasterPage.master" AutoEventWireup="true" CodeFile="Sachtheochude.aspx.cs" Inherits="Sachtheochude" %>

<%@ Register Src="~/UC/ucSachmoi.ascx" TagPrefix="uc1" TagName="ucSachmoi" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p class="text-center text-danger">
		Sách Theo Chủ Đề: <asp:Label ID="lbTenChuDe" runat="server" Text=""></asp:Label>
	</p>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="3" Height="289px" Width="752px">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="TenSachLabel" runat="server" Text='<%# Eval("TenSach") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="HinhMinhHoaLabel" runat="server" Text='<%# Eval("HinhMinhHoa") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Chonmua.png" />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString4 %>" SelectCommand="SELECT [TenSach], [HinhMinhHoa], [DonGia] FROM [SACH]"></asp:SqlDataSource>
</asp:Content>

