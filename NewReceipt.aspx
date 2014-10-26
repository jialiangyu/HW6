<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewReceipt.aspx.vb" Inherits="NewReceipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="sql_newreceipt" DefaultMode="Insert">
            <EditItemTemplate>
               
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                    <tr>

                        <td>
                            Recipe Name:
                        </td>

                        <td>
                            <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Submitted By:
                        </td>

                        <td>
                            <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Ingredient 1:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_1TextBox" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Ingredient 2:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_2TextBox" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Ingredient 3:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_3TextBox" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Ingredient 4:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_4TextBox" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Ingredient 5:
                        </td>

                        <td>
                            <asp:TextBox ID="Ingredient_5TextBox" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Preparation:
                        </td>

                        <td>
                            <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
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
