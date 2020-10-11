<%@ Page Title="" Language="C#" MasterPageFile="~/UC/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="UC/ucSachmoi.ascx" tagname="ucSachmoi" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:ucSachmoi ID="ucSachmoi1" runat="server" />
</asp:Content>

