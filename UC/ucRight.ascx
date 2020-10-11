<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucRight.ascx.cs" Inherits="UC_ucRight" %>
<link href="../Scripts/CSS/Style.css" rel="stylesheet" />

<style type="text/css">
    .auto-style1 
    {
        width: 201px;
    }
    .auto-style2 
    {
        height: 17px;
    }
</style>

<aside id="right" class="auto-style1">
	<div id="sachbannhieu">
		<p>
			Sách Bán Chạy
		</p>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="200px" Height="100px" CellSpacing="3">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" VerticalAlign="Middle" Wrap="True" />
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="TenSachLabel" runat="server" Text='<%# Eval("TenSach", "{0}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("HinhMinhHoa", "{0}") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString3 %>" SelectCommand="SELECT [TenSach], [HinhMinhHoa] FROM [SACH] WHERE ([MaSach] &lt;= @MaSach2)">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="MaSach2" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
	</div>
	<div id="lienketwebsite">
		<p>
			LIÊN KẾT WEBSITE
		</p>
		<select onChange="wondow.open(this.option[this.selectedIndex].value,'_blank')"><br>
			<option selected="selected">
				-------------------------------- Liên Kết ----------------------------------
			</option>
			<option value="https://tdmu.edu.vn/">
				Trường Đại học Thủ Dầu Một
			</option>
			<option value="http://et.tdmu.edu.vn/">
				Khoa Công Nghệ Thông Tin - Trường Đại học Thủ Dầu Một
			</option>
		</select>
	</div>
	<div id="soluongtruycap">
		<p>
			THỐNG KÊ TRUY CẬP
		</p>
		<h4>
			Tổng Truy Cập :
            <asp:Label ID="lblLuotTruyCap" runat="server"></asp:Label>
		</h4>
		<h4>
			Đang Online:
		    <asp:Label ID="lblOnline" runat="server"></asp:Label>
		</h4>
	</div>
</aside>