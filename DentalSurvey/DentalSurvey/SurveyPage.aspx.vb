Imports System.Data.SqlClient

Public Class SurveyPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        Dim Command As New SqlCommand("usp_InsertSurveyData")
        Command.CommandType = CommandType.StoredProcedure
        Command.Parameters.Add("@ChartNum", SqlDbType.VarChar, 10).Value = Chart_Number.Text
        Command.Parameters.Add("@Ethnicity", SqlDbType.Int).Value = Ethnicitiy.Text
        Command.Parameters.Add("@Gender", SqlDbType.Int).Value = GenderList.Text
        Command.Parameters.Add("@ZipCode", SqlDbType.Int).Value = Zip.Text
        Command.Parameters.Add("@Birthday", SqlDbType.SmallDateTime).Value = BirthdayList.Text
    End Sub

End Class