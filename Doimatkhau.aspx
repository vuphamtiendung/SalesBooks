<%@ Page Title="" Language="C#" MasterPageFile="~/UC/MasterPage.master" AutoEventWireup="true" CodeFile="Doimatkhau.aspx.cs" Inherits="Doimatkhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 314px;
        }
        .auto-style18 {
            width: 247px;
            height: 20px;
        }
        .auto-style19 {
            width: 122px;
        }
        .auto-style20 {
            width: 450px;
            height: 52px;
        }
        .auto-style21 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <fieldset style="width:400px; align:center; padding: 20px;">
				<legend align = "center">
					<b>Thông tin cá nhân</b>
				</legend>
				<table align = "center">
					<tr>
						<td class="auto-style19">
							Họ và tên:
						</td>
						<td class="auto-style17">
							<input type="text" name="txtHoTen" size="30" class="auto-style18">
						</td>
					</tr>
					<tr>
						<td class="auto-style19">
							Ngày sinh:
						</td>
						<td class="auto-style17">
							<select name="Ngày">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    
                                </asp:DropDownList>
						    </select>
						    &nbsp;Tháng
						    <select name="Tháng">
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    
                                </asp:DropDownList>
						    </select>
						    &nbsp;Năm&nbsp;
                            <asp:TextBox ID="txtNamSinh" runat="server" Width="89px"></asp:TextBox>
						    </td>
					    </tr>
					    <tr>
						    <td class="auto-style19">
							    Giới tính:
						    </td>
						    <td class="auto-style17">
							    &nbsp;<asp:RadioButton ID="rdNam" runat="server" Text="Nam" />
							    &nbsp;
							    <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" />
						    </td>
					    </tr>
					    <tr>
						    <td class="auto-style19">
							    Địa chỉ:
						    </td>
						    <td class="auto-style17">
							    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="259px"></asp:TextBox>
						    </td>
					    </tr>
					    <tr>
						    <td class="auto-style19">
							    Điện thoại:
						    </td>
						    <td class="auto-style17">
							    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="256px"></asp:TextBox>
						    </td>
					    </tr>
					    <tr>
						    <td class="auto-style19">
							    Email:
						    </td>
						    <td class="auto-style17">
							    &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="264px"></asp:TextBox>
						    </td>
					    </tr>
				    </table>
			    </fieldset>
			    <fieldset style="width:415px; align: center;">
				    <legend>
					    <b>
						    Thông tin đăng nhập
					    </b>
				    </legend>
				    <table align = "center">
					    <tr>
						    <td>
							    Tên đăng nhập:
						    </td>
						    <td>
							    &nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="232px"></asp:TextBox>
						    </td>
					    </tr>
					    <tr>
						    <td>
							    Mật khẩu:
						    </td>
						    <td>
							    &nbsp;<asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="219px"></asp:TextBox>
						    </td>
					    </tr>
					    <tr>
						    <td>
							    Nhập lại mật khẩu:
						    </td>
						    <td>
							    &nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="218px"></asp:TextBox>
						    </td>
					    </tr>
				    </table>
			    </fieldset>
			    <table style="padding: 10px;" class="auto-style20">
				    <tr>
					    <td colspan="2" align="center">
						    &nbsp;
                            <table class="auto-style21">
                                <tr>
                                    <td>
                                        <asp:Button ID="btDangKy" runat="server" Height="34px" Text="Đăng Ký" Width="102px" />
                                    </td>
                                </tr>
                            </table>
					    </td>
				    </tr>
			    </table>
</asp:Content>

