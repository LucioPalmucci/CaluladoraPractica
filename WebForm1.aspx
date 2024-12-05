<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CaluladoraApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center mt-5 align-items-center" runat="server">
            <div id="calculadora" runat="server" class="border-1 rounded p-3 bg-light w-50">
                <div id="resultado" class="mb-3">
                    <asp:TextBox runat="server" readonly="true" id="resultadoTxt" CssClass="form-control fs-2"/>
                </div>
                <div id="caluclos">
                    <div id="fila1" class="m-1 row ">
                        <asp:Button Text="7" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="8" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="9" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="/" runat="server" CssClass="btn btn-secondary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarOperador"/>
                    </div>
                    <div id="fila2" class="m-1 row">
                        <asp:Button Text="4" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="5" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="6" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="*" runat="server" CssClass="btn btn-secondary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarOperador"/>
                    </div>
                    <div id="fila3" class="m-1 row">
                        <asp:Button Text="1" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="2" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="3" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="-" runat="server" CssClass="btn btn-secondary ps-4 pe-4 col m-3 fs-4" OnClick="NegativoBtn"/>
                    </div>
                    <div id="fila4" class="m-1 row">
                        <asp:Button Text="C" runat="server" CssClass="btn btn-danger ps-4 pe-4 col m-3 fs-4" OnClick="clear_btn"/>
                        <asp:Button Text="0" runat="server" CssClass="btn btn-primary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarNumero"/>
                        <asp:Button Text="=" runat="server" CssClass="btn btn-success ps-4 pe-4 col m-3 fs-4" OnClick="igualBtn_Click"/>
                        <asp:Button Text="+" runat="server" CssClass="btn btn-secondary ps-4 pe-4 col m-3 fs-4" OnClick="AgregarOperador"/>
                    </div>
                    <div id="fila5" class="m-1 row" visible="false" runat="server">
                        <asp:Button Text="^" runat="server" CssClass="btn btn-dark ps-4 pe-4 col m-3 fs-4" OnClick="AgregarOperador"/>
                        <asp:Button Text="√" runat="server" CssClass="btn btn-dark ps-4 pe-4 col m-3 fs-4" OnClick="AgregarOperador"/>
                        <asp:Button Text="log" runat="server" CssClass="btn btn-dark ps-4 pe-4 col m-3 fs-4" OnClick="AgregarOperador"/>
                        <asp:Button Text="%" runat="server" CssClass="btn btn-dark ps-4 pe-4 col m-3 fs-4" OnClick="AgregarOperador"/>
                    </div>
                </div>
                <asp:Button Text="Científica" runat="server" CssClass="btn btn-danger ps-4 pe-4 m-3 fs-4 d-block d-flex justify-self-center" OnClick="MostrarCientifica"/>
            </div>
        </div>
    </form>
</body>
</html>
