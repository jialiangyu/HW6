
Partial Class Detailedview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedRecipe As String = e.Values("recipe_name").ToString()
        lb_delete.Text = deletedRecipe & "has been deleted from the database."
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Default.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        DetailsView1.Focus()
    End Sub
End Class
