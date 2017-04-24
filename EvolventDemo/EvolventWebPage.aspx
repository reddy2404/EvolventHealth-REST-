<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvolventWebPage.aspx.cs" Inherits="EvolventDemo.EvolventWebPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>Simple WCF Evolvent Health Service</h4>
            <asp:Label ID="lblError" runat="server"></asp:Label>
            <table>
                <tr>
                    <td>Id :
                    </td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server" Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td>First Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Style="width: 300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Last Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Style="width: 300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Register No. :
                    </td>
                    <td>
                        <asp:TextBox ID="txtEamil" runat="server" Style="width: 300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Department :
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" Style="width: 300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Status :
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>true</asp:ListItem>
                            <asp:ListItem>false</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="ButtonInsert" runat="server" Text="Add" OnClick="InsertButton_Click" />
                        <asp:Button ID="ButtonUpdate" runat="server" Visible="false" Text="Update" OnClick="InsertButton_Click" />
                        <asp:Button ID="ButtonDelete" runat="server" Visible="false" Text="Delete" OnClick="DeleteButton_Click" />
                        <asp:Button ID="ButtonCancel" runat="server" Visible="false" Text="Cancel" OnClick="CancelButton_Click" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="gdvDetails" DataKeyNames="ID" AutoGenerateColumns="false"
                runat="server" OnSelectedIndexChanged="gdvDetails_SelectedIndexChanged" Width="700">
                <HeaderStyle BackColor="#0A9A9A" ForeColor="White" Font-Bold="true" Height="30" />
                <AlternatingRowStyle BackColor="#f5f5f5" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnSelect" runat="server" CommandName="Select" Text="Select" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label ID="lblFirstName" runat="server" Text='<%#Eval("FirstName") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label ID="lblLastName" runat="server" Text='<%#Eval("LastName") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EmailID.">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PhoneNumber">
                        <ItemTemplate>
                            <asp:Label ID="lblPhone" runat="server" Text='<%#Eval("PhoneNumber") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
