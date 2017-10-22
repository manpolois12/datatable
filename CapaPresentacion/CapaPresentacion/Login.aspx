﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CapaPresentacion.Login" %>

<!DOCTYPE html>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Acceso al Sistema</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
</head>
<body class="bg-black">
    <div class="form-box" id="login-box">
        <div class="header">Login</div>
        <form id="form1" runat="server">
            <div class="body bg-gray">
                <div class="form-group">
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingrese usuario..."></asp:TextBox>
                </div>    
                <div class="form-group">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" pplaceholder="Ingrese password..." TextMode="Password"></asp:TextBox>
                </div>                
            </div>
            <div class="footer">
                <asp:Button ID="btnIngresar" CssClass="btn bg-olive btn-block" runat="server" Text="Iniciar Sesión" OnClick="btnIngresar_Click" />
            </div>
        </form>
    </div>
    <script src="//ajax.gooleapis.com/ajax/libs/query/2.1.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>

    
</body>
</html>
