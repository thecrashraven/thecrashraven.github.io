Imports System.Web.Mvc

Namespace Controllers
    Public Class HelloWorldController
        Inherits Controller

        ' GET: HelloWorld
        Function Index() As ActionResult
            Return View()
        End Function

        'Get: HelloWorld/Welcome
        Function Welcome(name As String, Optional numTimes As Integer = 1) As ActionResult
            ViewBag.Message = "Hello" & name
            ViewBag.numTimes = numTimes
            Return View()
        End Function
    End Class
End Namespace