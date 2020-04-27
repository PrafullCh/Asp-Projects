<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prafull.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gpndbConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    RollNo:
                    <asp:TextBox ID="RollNoTextBox" runat="server" Text='<%# Bind("RollNo") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    RollNo:
                    <asp:TextBox ID="RollNoTextBox" runat="server" Text='<%# Bind("RollNo") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    RollNo:
                    <asp:Label ID="RollNoLabel" runat="server" Text='<%# Bind("RollNo") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    RollNo:
                    <asp:Label ID="RollNoLabel" runat="server" Text='<%# Eval("RollNo") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            </asp:Repeater>
            <br />
        </div>
    </form>
</body>
</html>
