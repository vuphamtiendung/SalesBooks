<%@ Page Title="" Language="C#" MasterPageFile="~/UC/MasterPage.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 680px;
            height: 199px;
        }
        .auto-style18 {
            width: 286px;
        }
        .auto-style19 {
            width: 125px;
        }
        .auto-style20 {
            width: 125px;
            height: 33px;
        }
        .auto-style21 {
            width: 286px;
            height: 33px;
        }
        .auto-style22 {
            width: 125px;
            height: 52px;
        }
        .auto-style23 {
            height: 52px;
        }
        .auto-style24 {
            height: 19px;
        }
        .auto-style25 {
            width: 654px;
            height: 80px;
        }
        .auto-style26 {
            width: 125px;
            height: 30px;
        }
        .auto-style27 {
            width: 286px;
            height: 30px;
        }
    .auto-style28 {
        height: 25px;
        width: 151%;
    }
    .auto-style29 {
        height: 26px;
        width: 168%;
        margin-left: 0px;
    }
        .auto-style30 {
            width: 450px;
        }
        .auto-style31 {
            width: 532px;
        }
        .auto-style32 {
            height: 19px;
            width: 188px;
        }
        .auto-style33 {
            width: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <fieldset style="width:400px; align:center; padding: 20px;">
				<legend align = "center" class="auto-style29">
					<b class="text-center">Thông tin cá nhân</b>
				</legend>
				<table align = "center" class="auto-style17">
					<tr>
						<td class="auto-style19">
							Họ và tên:
						</td>
						<td class="auto-style18">
                            <asp:TextBox ID="txtHoTen" runat="server" Width="214px" Height="20px"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="auto-style22">
							Ngày sinh:
						</td>
						<td class="auto-style23">
                            <asp:DropDownList ID="ddlNgaysinh" runat="server" Width="60px">
                                <asp:ListItem Selected="True">1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
						    <strong>
						    &nbsp;
                            Tháng: 
                             &nbsp;
                            <asp:DropDownList ID="ddlThangsinh" runat="server" AutoPostBack="True" Width="60px">
                                <asp:ListItem Selected="True">1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;
                            Năm: 
                            &nbsp;
                            <asp:TextBox ID="txtNamSinh" runat="server" Width="96px" Height="21px"></asp:TextBox>
                            &nbsp;
                            </strong>
                        </td>
					</tr>
					<tr>
						<td class="auto-style19">
							Giới tính:
						</td>
						<td class="auto-style18">
							<asp:RadioButtonList ID="rblGioiTinh" runat="server" AutoPostBack="True" Height="24px" RepeatDirection="Horizontal" Width="221px">
                                <asp:ListItem Selected="True">Nam</asp:ListItem>
                                <asp:ListItem>Nữ</asp:ListItem>
                            </asp:RadioButtonList>
						</td>
					</tr>
					<tr>
						<td class="auto-style26">
							Địa chỉ:
						</td>
						<td class="auto-style27">
                            <asp:TextBox ID="txtDiachi" runat="server" Width="300px" Height="23px"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="auto-style20">
							Điện thoại:
						</td>
						<td class="auto-style21">
                            <asp:TextBox ID="txtDienthoai" runat="server" Width="300px" Height="23px"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="auto-style19">
							Email:
						</td>
						<td class="auto-style18">
                            <asp:TextBox ID="txtEmail" runat="server" Width="300px" Height="24px"></asp:TextBox>
						</td>
					</tr>
				</table>
			</fieldset>
			<fieldset style="width:415px; align: center;">
				<legend class="auto-style28">
					<b>
						Thông tin đăng nhập
					</b>
				</legend>
				<table align = "center" class="auto-style25">
					<tr>
						<td class="auto-style32">
							Tên đăng nhập:
						</td>
						<td class="auto-style24">
                            <asp:TextBox ID="txtTenDN" runat="server" Width="346px" Height="23px"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="auto-style33">
							Mật khẩu:
						</td>
						<td>
                            <asp:TextBox ID="txtMatkhau" runat="server" Width="355px" Height="23px" TextMode="Password"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="auto-style33">
							Nhập lại mật khẩu:
						</td>
						<td>
                            <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" Width="290px" Height="23px" TextMode="Password"></asp:TextBox>
						</td>
					</tr>
				</table>
			</fieldset>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <table style="padding: 10px;" class="auto-style31">
                <tr>
                    <td colspan="2" align="center" class="auto-style30">&nbsp;
                        <asp:Button ID="btDangKy" runat="server" Height="34px" Text="Đăng Ký" Width="98px" OnClick="btDangKy_Click" />
                    </td>
                </tr>
            </table>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:Label ID="lbThongBaoLoi" runat="server" Width="300px"></asp:Label>
                    </td>
                </tr>
            </table>
</asp:Content>
 

