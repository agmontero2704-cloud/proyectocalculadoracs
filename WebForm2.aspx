<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="areatriangulo.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora de Áreas - Menú Principal</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f0f0f0; margin: 20px; }
        .contenedor { width: 600px; margin: 40px auto; background: white; border: 2px solid #333; border-radius: 10px; padding: 30px; text-align: center; }
        .titulo { font-size: 26px; font-weight: bold; color: #333; margin-bottom: 10px; }
        .subtitulo { font-size: 14px; color: #666; margin-bottom: 25px; display: block; }
        .tarjeta { border: 1px solid #ccc; border-radius: 8px; padding: 20px; margin-bottom: 15px; }
        .tarjeta h3 { margin: 0 0 5px 0; }
        .tarjeta p { font-size: 13px; color: #666; margin: 0 0 15px 0; }
        .btn-menu { padding: 10px 25px; border: none; border-radius: 4px; font-weight: bold; color: white; cursor: pointer; font-size: 15px; }
        .btn-tri { background: #CC6600; }
        .btn-tri:hover { background: #a85400; }
        .btn-cua { background: #009933; }
        .btn-cua:hover { background: #007722; }
        .btn-cir { background: #CC0066; }
        .btn-cir:hover { background: #a80053; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div class="titulo">Calculadora de Áreas</div>
            <span class="subtitulo">Menú principal — elige una figura para ir a su página (ruta propia)</span>

            <div class="tarjeta">
                <h3 style="color:#CC6600;">Triángulo</h3>
                <p>Fórmula: (base × altura) / 2 — Ruta: /Figuras/Triangulo.aspx</p>
                <asp:Button ID="btnIrTriangulo" runat="server" Text="Ir a Triángulo" CssClass="btn-menu btn-tri" OnClick="btnIrTriangulo_Click" />
            </div>

            <div class="tarjeta">
                <h3 style="color:#009933;">Cuadrado</h3>
                <p>Fórmula: lado × lado — Ruta: /Figuras/Cuadrado.aspx</p>
                <asp:Button ID="btnIrCuadrado" runat="server" Text="Ir a Cuadrado" CssClass="btn-menu btn-cua" OnClick="btnIrCuadrado_Click" />
            </div>

            <div class="tarjeta">
                <h3 style="color:#CC0066;">Círculo</h3>
                <p>Fórmula: π × radio × radio — Ruta: /Figuras/Circulo.aspx</p>
                <asp:Button ID="btnIrCirculo" runat="server" Text="Ir a Círculo" CssClass="btn-menu btn-cir" OnClick="btnIrCirculo_Click" />
            </div>
        </div>
    </form>
</body>
</html>
