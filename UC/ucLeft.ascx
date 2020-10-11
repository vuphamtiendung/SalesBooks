<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLeft.ascx.cs" Inherits="UC_ucLeft" %>
<link href="../Scripts/CSS/Style.css" rel="stylesheet" />

<style type="text/css">
    .auto-style1 
    {
        width: 32px;
    }
    .auto-style2 
    {
        width: 47px;
    }
    .auto-style3 
    {
        width: 12px;
    }
    .auto-style4 
    {
        width: 202px;
    }
</style>

<aside id="left" class="auto-style4"> 
	<div class="menu">
		<p>
			SÁCH THEO CHỦ ĐỀ
		</p>
        <asp:GridView ID="gvChuDeSach" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaCD" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvChuDeSach_SelectedIndexChanged" Width="228px">
            <Columns>
                <asp:BoundField DataField="MaCD" InsertVisible="False" ReadOnly="True" SortExpression="MaCD" />
                <asp:BoundField DataField="TenChuDe" HeaderText="TenChuDe" SortExpression="TenChuDe" />
            </Columns>
            <EmptyDataTemplate>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/icon_list.jpg" />
                        </td>
                        <td>
                            <asp:HyperLink ID="hlChuDeSach" runat="server" NavigateUrl='<%# "../Sachtheochude.aspx?maCD" + Eval("MaCD") %>' Text='<%# Eval("TenChuDe") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT [MaCD], [TenChuDe] FROM [CHUDE]"></asp:SqlDataSource>
	</div>
	<div class="menu">
		<p>
			SÁCH THEO NHÀ XUẤT BẢN
		</p>
        <asp:GridView ID="gvSachNXB" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="MaNXB" DataSourceID="SqlDataSource2" Width="225px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="MaNXB" InsertVisible="False" ReadOnly="True" SortExpression="MaNXB" />
                <asp:BoundField DataField="TenNXB" HeaderText="TenNXB" SortExpression="TenNXB" />
            </Columns>
            <EmptyDataTemplate>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style2">
                            <img alt="" class="auto-style3" src="../Images/icon_list.jpg" />
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../Sachtheonhaxuatban.aspx?maNXB=" + Eval("MaNXB") %>' Text='<%# Eval("TenNXB") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
	    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString2 %>" SelectCommand="SELECT [MaNXB], [TenNXB] FROM [NHAXUATBAN]"></asp:SqlDataSource>
	</div>
	<div class="calendar">
        <asp:Calendar ID="Calendar1" runat="server" Width="239px"></asp:Calendar>				
	</div>
</aside>