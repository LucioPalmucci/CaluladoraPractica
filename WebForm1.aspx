﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CaluladoraApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="full-height">
        <div runat="server" class=" d-flex justify-content-center mt-5">
            <div id="calculadora" runat="server" class="border-1 rounded p-3 bg-light fs-3">
                <div id="resultado" class="mb-3">
                    <asp:TextBox runat="server" readonly="true" id="resultadoTxt" CssClass="form-control"/>
                </div>
                <div id="caluclos">
                    <div id="fila1" class="mb-2">
                        <asp:Button Text="7" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="8" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="9" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="/" runat="server" CssClass="btn btn-secondary"/>
                    </div>
                    <div id="fila2" class="mb-2">
                        <asp:Button Text="4" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="5" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="6" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="*" runat="server" CssClass="btn btn-secondary"/>
                    </div>
                    <div id="fila3" class="mb-2">
                        <asp:Button Text="1" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="2" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="3" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="-" runat="server" CssClass="btn btn-secondary"/>
                    </div>
                    <div id="fila4" class="mb-2">
                        <asp:Button Text="0" runat="server" CssClass="btn btn-primary"/>
                        <asp:Button Text="=" runat="server" CssClass="btn btn-success"/>
                        <asp:Button Text="+" runat="server" CssClass="btn btn-secondary"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>