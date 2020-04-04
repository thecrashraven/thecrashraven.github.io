Imports System.Data.Entity

Namespace Clinic_Sites
    Public Class Clinic_Sites

        Public Property Site_Code As String
        Public Property State As String
        Public Property County As String
        Public Property Year As Integer
        Public Property Start_Date As Date
        Public Property End_Date As Date
    End Class

    Public Class Clinic_SitesDbContext
        Inherits DbContext
        Public Property Clinic_Sites As DbSet(Of Clinic_Sites)
    End Class
End Namespace