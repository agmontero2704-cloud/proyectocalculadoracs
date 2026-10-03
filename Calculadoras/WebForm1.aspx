<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="areatriangulo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Area del Triangulo</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        .pnldatosgeneral {
            width: 500px;
            margin: 50px auto;
            background-color: #33CCFF;
            border: 2px solid black;
            padding: 20px;
            border-radius: 10px;
        }

        .pnlletrero {
            background-color: white;
            border: 1px solid black;
            padding: 10px;
            text-align: center;
            margin-bottom: 20px;
        }

        .lblletrero {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        .lblbase, .lblaltura {
            display: inline-block;
            width: 180px;
            font-weight: bold;
            font-size: 14px;
        }

        .txtbase, .txtaltura {
            width: 175px;
            font-weight: bold;
            color: #0066FF;
            font-size: 12px;
            padding: 4px;
        }

        .btncalcular {
            background-color: #0b6ed4;
            color: white;
            padding: 8px 20px;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
            margin-right: 10px;
        }

        .btncalcular:hover {
            background-color: #095bb8;
        }

        .btnlimpiar {
            background-color: #cc0000;
            color: white;
            padding: 8px 20px;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
        }

        .btnlimpiar:hover {
            background-color: #aa0000;
        }

        .lblresultado {
            font-size: 20px;
            font-weight: bold;
            color: green;
            display: block;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnldatosgeneral" runat="server" CssClass="pnldatosgeneral">
            <asp:Panel ID="PnlLetrero" runat="server" CssClass="pnlletrero">
                <asp:Label ID="lbletrero" runat="server" Text="Cálculo de Área del Triángulo" CssClass="lblletrero"></asp:Label>
            </asp:Panel>

            <asp:Label ID="lblBase" runat="server" Text="Introducir la Base:" CssClass="lblbase"></asp:Label>
            <asp:TextBox ID="txtBase" runat="server" CssClass="txtbase"></asp:TextBox>
            <br />

            <asp:Label ID="lblAltura" runat="server" Text="Introducir la Altura:" CssClass="lblaltura"></asp:Label>
            <asp:TextBox ID="txtAltura" runat="server" CssClass="txtaltura"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnCalcular" runat="server" Text="Calcular Área" CssClass="btncalcular" OnClick="btnCalcular_Click" />
            <asp:Button ID="Btnlimpiar" runat="server" Text="Limpiar" CssClass="btnlimpiar" OnClick="Btnlimpiar_Click" />
            <br /><br />

            <asp:Label ID="lblResultado" runat="server" Text="" CssClass="lblresultado"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>