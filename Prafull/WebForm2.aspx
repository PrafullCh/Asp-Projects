<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Prafull.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Button2 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <br />
        <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <br />
        Form Controls are here<br />
        normal input<br />
        <input id="Text1" type="text" runat="server" /><br />
        textarea<br />
        <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea><br />
        password<br />
        <input id="Password1" type="password" /><br />
        for file<br />
        <input id="File1" type="file" /><br />
        checkbox<br />
        <input id="Checkbox1" type="checkbox" /><br />
        radio<br />
        <input id="Radio1" type="radio" /><br />
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <select id="Select1" name="D1">
            <option></option>
        </select><br />
        <hr style="margin-top: 0px" />
        <br />
        <img alt="" src="" /><br />
        <div>
        </div>
        <br />
        <input id="Button2" type="button" value="button" /><input id="Reset1" type="reset" value="reset" /><input id="Hidden1" type="hidden" /></form>
</body>
</html>
