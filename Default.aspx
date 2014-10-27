<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
        <h2>
    
        <asp:SqlDataSource ID="sql_Hw6" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [jyu6_HW6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [jyu6_HW6] ([recipe_name], [submitted_by], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [jyu6_HW6]" UpdateCommand="UPDATE [jyu6_HW6] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
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
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewReceipt.aspx">New Recipe</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
    </h2>
        <h2>
    
            &nbsp;<asp:GridView ID="GridView1" CssClass="gridview" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sql_Hw6">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="DetailView.aspx?ID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
    </h2>
    </div>
    </form>
</body>
</html>
