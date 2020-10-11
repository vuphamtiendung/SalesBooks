<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeader.ascx.cs" Inherits="ucHeader" %>
<link href="../Scripts/CSS/Style.css" rel="stylesheet" />
<head>
    <link href="../Scripts/CSS/Header.css" rel="stylesheet" />
	<meta charset="utf-8">
	<title>
		Nhà Sách FAHASHA
	</title>
    <style type="text/css">
        .auto-style1 
        {
            width: 307px;
        }
    </style>
</head>
<header>
	<div id="logo">
		<img src="../Images/LOGO.jpg" title="Trang Chủ" width="700px" height="150px"/>
	</div>
	<div id="dn">
		<img src="../Images/dangnhap.jpg" title="Đăng Nhập">
		<a href="Dangnhap.html">
			Đăng Nhập
		</a> |
		<a href="Dangky.html">
			Đăng Ký
		</a>
		<a href="#">
			<img src="../Images/Giohang.gif" title="Giỏ Hàng"/>
			Giỏ Hàng (<span>Trống</span>)
		</a>
	</div>
</header>
<nav>
	<div id="subnav">
		<ul>
			<li>
				<a href="Trangchu.html">
					Trang Chủ
				</a>
			</li>
			<li>
				<a href="Gioithieu.html">
					Giới Thiệu
				</a>
			</li>
			<li>
				<a href="#">
		         Liên Hệ
				</a>
			</li>  
		</ul>
	</div>
</nav>

