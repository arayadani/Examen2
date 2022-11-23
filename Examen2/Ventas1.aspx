<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas1.aspx.cs" Inherits="Examen2.Ventas1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 294px">
    <form id="form1" runat="server">
        <div>
            <br />
            CAJERO:<asp:TextBox ID="tcajero" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:VentasUhConnectionString3 %>" SelectCommand="SELECT * FROM [Cajeros]"></asp:SqlDataSource>
            <br />
            <br />
            PRODUCTO:<asp:TextBox ID="tproducto" runat="server"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:VentasUhConnectionString4 %>" SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>
            <br />
            MAQUINA REGISTRADORA:<asp:TextBox ID="tmaquina" runat="server"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:VentasUhConnectionString5 %>" SelectCommand="SELECT * FROM [Maquinas_registradoras]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#CC0099" OnClick="Button1_Click" Text="INGRESAR" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VentasUhConnectionString2 %>" SelectCommand="SELECT * FROM [Cajeros]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
