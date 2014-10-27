<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewReceipt.aspx.vb" Inherits="NewReceipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link rel="stylesheet" type="text/css" href="style.css" /"
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h3>Wicked Easy Recipe<br />
        Using 5 Ingedients or Less!</h3><br />
        <asp:SqlDataSource ID="sql_newreceipt" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [jyu6_HW6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [jyu6_HW6] ([recipe_name], [submitted_by], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [jyu6_HW6]" UpdateCommand="UPDATE [jyu6_HW6] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource><h2>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewReceipt.aspx">New Recipe</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
        </h2><br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="sql_newreceipt" DefaultMode="Insert">
            <EditItemTemplate>
               
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="table">
                    <tr>

                        <td id="title">
                            Recipe Name:
                        </td>

                        <td >
                            <asp:TextBox ID="tb_recipename" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                        
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_recipename" runat="server" ErrorMessage="Please type the Recipe Name" ControlToValidate="tb_recipename"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>

                        <td id="title">
                            Submitted By:
                        </td>

                        <td>
                            <asp:TextBox ID="tb_subimit" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ID="rfv_submitname" runat="server" ErrorMessage="Please type the submit Name" ControlToValidate="tb_subimit"></asp:RequiredFieldValidator>
                        </td>

                    </tr>

                    <tr>

                        <td id="title">
                            Ingredient 1:
                        </td>

                        <td>
                            <asp:TextBox ID="tb_ingredient1" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ID="rfv_ingredient" runat="server" ErrorMessage="Please type at least one ingredient" ControlToValidate="tb_ingredient1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>

                        <td id="title">
                            Ingredient 2:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_2TextBox" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td id="title">
                            Ingredient 3:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_3TextBox" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td id="title">
                            Ingredient 4:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_4TextBox" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td id="title">
                            Ingredient 5:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_5TextBox" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td id="title">
                            Preparation:
                        </td>

                        <td>
                            <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ID="rfv_preparation" runat="server" ErrorMessage="Please type the preparation" ControlToValidate="tb_preparation"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>

                        <td id="title">
                            Notes:
                        </td>

                        <td>
                            <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                        </td>

                    </tr>





                    <tr>

                        <td>
                            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>

                        <td>
                            <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>

                    </tr>


                </table>


            </InsertItemTemplate>
            <ItemTemplate>
              
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
