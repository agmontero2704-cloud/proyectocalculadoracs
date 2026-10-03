<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="areatriangulo.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora de Figuras - Todas en una ventana</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f0f0f0; margin: 20px; }
        .contenedor { width: 700px; margin: 0 auto; background: white; border: 2px solid #333; border-radius: 10px; padding: 20px; }
        .titulo { text-align: center; font-size: 24px; font-weight: bold; color: #333; margin-bottom: 20px; }
        .formula { font-size: 13px; color: #666; margin-bottom: 15px; display: block; }
        .campo { margin-bottom: 15px; }
        .campo label { display: inline-block; width: 150px; font-weight: bold; font-size: 14px; }
        .campo input[type="text"] { width: 200px; padding: 5px; font-size: 14px; border: 1px solid #999; border-radius: 4px; }
        .btn-calcular { padding: 8px 20px; border: none; border-radius: 4px; font-weight: bold; color: white; cursor: pointer; font-size: 14px; margin-right: 10px; }
        .btn-tri { background: #CC6600; }
        .btn-cua { background: #009933; }
        .btn-cir { background: #CC0066; }
        .resultado { font-size: 18px; font-weight: bold; margin-top: 10px; color: green; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div class="titulo">Calculadora de Figuras Geométricas</div>

            <!-- TRIÁNGULO -->
            <div style="margin-bottom: 25px;">
                <h3 style="color:#CC6600;">Triángulo</h3>
                <div class="campo">
                    <label>Base:</label>
                    <asp:TextBox ID="txtBase" runat="server"></asp:TextBox>
                </div>
                <div class="campo">
                    <label>Altura:</label>
                    <asp:TextBox ID="txtAltura" runat="server"></asp:TextBox>
                </div>
                <div class="formula">Fórmula: (base × altura) / 2</div>
                <asp:Button ID="btnTriangulo" runat="server" Text="Calcular Triángulo" CssClass="btn-calcular btn-tri" OnClick="btnTriangulo_Click" />
                <br />
                <asp:Label ID="lblTriangulo" runat="server" CssClass="resultado" style="margin-top: 5px;"></asp:Label>
            </div>

            <!-- CUADRADO -->
            <div style="margin-bottom: 25px;">
                <h3 style="color:#009933;">Cuadrado</h3>
                <div class="campo">
                    <label>Lado:</label>
                    <asp:TextBox ID="txtLado" runat="server"></asp:TextBox>
                </div>
                <div class="formula">Fórmula: lado × lado</div>
                <asp:Button ID="btnCuadrado" runat="server" Text="Calcular Cuadrado" CssClass="btn-calcular btn-cua" OnClick="btnCuadrado_Click" />
                <br />
                <asp:Label ID="lblCuadrado" runat="server" CssClass="resultado" style="margin-top: 5px;"></asp:Label>
            </div>

            <!-- CÍRCULO -->
            <div style="margin-bottom: 25px;">
                <h3 style="color:#CC0066;">Círculo</h3>
                <div class="campo">
                    <label>Radio:</label>
                    <asp:TextBox ID="txtRadio" runat="server"></asp:TextBox>
                </div>
                <div class="formula">Fórmula: π × radio × radio</div>
                <asp:Button ID="btnCirculo" runat="server" Text="Calcular Círculo" CssClass="btn-calcular btn-cir" OnClick="btnCirculo_Click" />
                <br />
                <asp:Label ID="lblCirculo" runat="server" CssClass="resultado" style="margin-top: 5px;"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>