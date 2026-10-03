<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Circulo.aspx.cs" Inherits="areatriangulo.Figuras.Circulo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Área del Círculo</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; background-color: #f5f5f5; margin: 0; padding: 20px; }
        .pnldatosgeneral { width: 500px; margin: 50px auto; background-color: #FFB3D9; border: 2px solid black; padding: 20px; border-radius: 10px; }
        .pnlletrero { background-color: white; border: 1px solid black; padding: 10px; text-align: center; margin-bottom: 20px; }
        .lblletrero { font-size: 20px; font-weight: bold; color: #333; }
        .lblcampo { display: inline-block; width: 180px; font-weight: bold; font-size: 14px; }
        .txtcampo { width: 175px; font-weight: bold; color: #CC0066; font-size: 12px; padding: 4px; }
        .btn { padding: 8px 20px; border: none; border-radius: 4px; font-weight: bold; cursor: pointer; margin-right: 10px; color: white; }
        .btncalcular { background-color: #CC0066; }
        .btncalcular:hover { background-color: #a80053; }
        .btnlimpiar { background-color: #cc0000; }
        .btnlimpiar:hover { background-color: #aa0000; }
        .btnvolver { background-color: #555; }
        .btnvolver:hover { background-color: #333; }
        .lblresultado { font-size: 20px; font-weight: bold; color: green; display: block; margin-top: 10px; }
        .formula { font-size: 13px; color: #333; margin-bottom: 15px; display: block; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlDatos" runat="server" CssClass="pnldatosgeneral">
            <asp:Panel ID="pnlLetrero" runat="server" CssClass="pnlletrero">
                <asp:Label ID="lblTitulo" runat="server" Text="Cálculo de Área del Círculo" CssClass="lblletrero"></asp:Label>
            </asp:Panel>

            <span class="formula">Fórmula: π × radio × radio</span>

            <asp:Label ID="lblRadio" runat="server" Text="Introducir el Radio:" CssClass="lblcampo"></asp:Label>
            <asp:TextBox ID="txtRadio" runat="server" CssClass="txtcampo"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnCalcular" runat="server" Text="Calcular Área" CssClass="btn btncalcular" OnClick="btnCalcular_Click" />
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="btn btnlimpiar" OnClick="btnLimpiar_Click" />
            <asp:Button ID="btnVolver" runat="server" Text="Volver al Menú" CssClass="btn btnvolver" OnClick="btnVolver_Click" CausesValidation="false" />
            <br /><br />

            <asp:Label ID="lblResultado" runat="server" Text="" CssClass="lblresultado"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
