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
        <br />
        <asp:DetailsView ID="DetailsView1" CssClass="gridview2" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="sql_datasource" Height="238px" Width="225px">
            <Fields>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient #1" SortExpression="Ingredient_1" />
                <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient #2" SortExpression="Ingredient_2" />
                <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient #3" SortExpression="Ingredient_3" />
                <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient #4" SortExpression="Ingredient_4" />
                <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient #5" SortExpression="Ingredient_5" />
                <asp:BoundField DataField="preparation" HeaderText="Preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
   
    </div>
    </form>
</body>
</html>
