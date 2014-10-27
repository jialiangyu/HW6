<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailView.aspx.vb" Inherits="Detailedview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link rel="stylesheet" type="text/css" href="style.css" /"
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h3>Wicked Easy Recipe<br />
        Using 5 Ingedients or Less!</h3><br /><h2>
        <asp:SqlDataSource ID="sql_datasource" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [jyu6_HW6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [jyu6_HW6] ([recipe_name], [submitted_by], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [jyu6_HW6] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [jyu6_HW6] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
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
        <span class="deleterecipe">
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewReceipt.aspx">New Recipe</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
        <br />
        
        <asp:Label ID="lb_delete" runat="server"></asp:Label></span></h2>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="sql_datasource" Height="322px" Width="767px">
            <EditItemTemplate>
                <table>

                    <tr >
                        <td id="title2">Recipe Name:</td>
                        <td id="title2">
                            <asp:TextBox ID="recipe_nameTextBox3" runat="server" Text='<%# Bind("recipe_name") %>' />

                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_recName" runat="server" ErrorMessage="Please type the recipe name." ControlToValidate="recipe_nameTextBox3"></asp:RequiredFieldValidator>
                        </td>

                    </tr>


                    <tr >
                        <td id="title2">Submitted By:</td>
                        <td id="title2">

                            <asp:TextBox ID="submitted_byTextBox3" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_subm2" runat="server" ErrorMessage="Please type the submit name." ControlToValidate="submitted_byTextBox3"></asp:RequiredFieldValidator>
                        </td>

                    </tr>

                    <tr >
                        <td id="title2">Indegredient 1:</td>
                        <td id="title2">

                            <asp:TextBox ID="Ingredient_1TextBox3" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_Ingre2" runat="server" ErrorMessage="Please type at least one indegredient." ControlToValidate="Ingredient_1TextBox3"></asp:RequiredFieldValidator>
                        </td>

                    </tr>

                    <tr id="title2">
                        <td>Indegredient 2:</td>
                        <td>

                            <asp:TextBox ID="Ingredient_2TextBox" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                        </td>


                    </tr>

                    <tr id="title2">
                        <td>Indegredient 3:</td>
                        <td>

                            <asp:TextBox ID="Ingredient_3TextBox" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                        </td>


                    </tr>

                    <tr id="title2">
                        <td>Indegredient 4:</td>
                        <td>
                            <asp:TextBox ID="Ingredient_4TextBox" runat="server" Text='<%# Bind("Ingredient_4") %>' />

                        </td>


                    </tr>

                    <tr id="title2">
                        <td>Indegredient 5:</td>
                        <td>

                            <asp:TextBox ID="Ingredient_5TextBox" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                        </td>


                    </tr>

                    <tr >
                        <td id="title2">Preparation:</td>
                        <td id="title2">

                            <asp:TextBox ID="preparationTextBox3" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please type the preparation." ControlToValidate="preparationTextBox3"></asp:RequiredFieldValidator>
                        </td>

                    </tr>

                    <tr >
                        <td id="title2">Notes:</td>
                        <td id="title2">

                            <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                        

                    </tr>

                    <tr>
                        
                        <td id="title3">
                            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Save" />

                        </td>
                        

                    </tr>

                 
                </table>
                
            
            </EditItemTemplate>
            <InsertItemTemplate>
            
            </InsertItemTemplate>
            <ItemTemplate>
                <table>

                    <tr id="title2">
                        <td>Recipe Name:</td>
                        <td>
                            <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                        

                    </tr>

                    <tr id="title2">
                        <td>Submitted By:</td>
                        <td>
                            <asp:Label ID="submitted_byLabel" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>

                    </tr>

                    <tr id="title2">
                        <td>Indegredient 1:</td>
                        <td>
                            <asp:Label ID="Ingredient_1Label" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                        </td>

                    </tr>


                    <tr id="title2">
                        <td>Indegredient 2:</td>
                        <td>
                            <asp:Label ID="Ingredient_2Label" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                        </td>

                    </tr>


                    <tr id="title2">
                        <td>Indegredient 3:</td>
                        <td>
                            <asp:Label ID="Ingredient_3Label" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                        </td>

                    </tr>


                    <tr id="title2">
                        <td>Indegredient 4:</td>
                        <td>
                            <asp:Label ID="Ingredient_4Label" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                        </td>

                    </tr>


                    <tr id="title2">
                        <td>Indegredient 5:</td>
                        <td>
                            <asp:Label ID="Ingredient_5Label" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                        </td>

                    </tr>


                    <tr id="title2">
                        <td>Preparation:</td>
                        <td>
                            <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>

                    </tr>


                    <tr id="title2">
                       <td> Notes:</td>
                        <td>
                            <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                        </td>

                    </tr>


                    <tr>
                        
                        <td id="title3">
                            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        </td>

                    
                        <td id="title3">
                            <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        </td>

                    </tr>

               
                </table>

            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
   
    </div>
        <br /><p class="center">© 2013. 6K:183 Software Design & Development</p>
    </form>
</body>
</html>
