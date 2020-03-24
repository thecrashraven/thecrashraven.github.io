﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated from a template.
'
'     Manual changes to this file may cause unexpected behavior in your application.
'     Manual changes to this file will be overwritten if the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Imports System
Imports System.Data.Entity
Imports System.Data.Entity.Infrastructure
Imports System.Data.Entity.Core.Objects
Imports System.Linq

Partial Public Class DentalSurveyEntities
    Inherits DbContext

    Public Sub New()
        MyBase.New("name=DentalSurveyEntities")
    End Sub

    Protected Overrides Sub OnModelCreating(modelBuilder As DbModelBuilder)
        Throw New UnintentionalCodeFirstException()
    End Sub

    Public Overridable Property Ethnicity_Codes() As DbSet(Of Ethnicity_Codes)
    Public Overridable Property Gender_Codes() As DbSet(Of Gender_Codes)
    Public Overridable Property Surveys() As DbSet(Of Survey)
    Public Overridable Property vw_Survey() As DbSet(Of vw_Survey)
    Public Overridable Property Clinic_Sites() As DbSet(Of Clinic_Sites)
    Public Overridable Property Dental_Code_Costs() As DbSet(Of Dental_Code_Costs)
    Public Overridable Property Dental_Codes() As DbSet(Of Dental_Codes)

    Public Overridable Function dbo_usp_GetSurveyData() As ObjectResult(Of dbo_usp_GetSurveyData_Result)
        Return DirectCast(Me, IObjectContextAdapter).ObjectContext.ExecuteFunction(Of dbo_usp_GetSurveyData_Result)("dbo_usp_GetSurveyData")
    End Function

    Public Overridable Function dbo_usp_InsertSurveyData(chartNum As String, ethnicity As Nullable(Of Integer), gender As Nullable(Of Integer), zipCode As Nullable(Of Integer), birthday As Nullable(Of Date)) As Integer
        Dim chartNumParameter As ObjectParameter = If(chartNum IsNot Nothing, New ObjectParameter("ChartNum", chartNum), New ObjectParameter("ChartNum", GetType(String)))

        Dim ethnicityParameter As ObjectParameter = If(ethnicity.HasValue, New ObjectParameter("Ethnicity", ethnicity), New ObjectParameter("Ethnicity", GetType(Integer)))

        Dim genderParameter As ObjectParameter = If(gender.HasValue, New ObjectParameter("Gender", gender), New ObjectParameter("Gender", GetType(Integer)))

        Dim zipCodeParameter As ObjectParameter = If(zipCode.HasValue, New ObjectParameter("ZipCode", zipCode), New ObjectParameter("ZipCode", GetType(Integer)))

        Dim birthdayParameter As ObjectParameter = If(birthday.HasValue, New ObjectParameter("Birthday", birthday), New ObjectParameter("Birthday", GetType(Date)))

        Return DirectCast(Me, IObjectContextAdapter).ObjectContext.ExecuteFunction("dbo_usp_InsertSurveyData", chartNumParameter, ethnicityParameter, genderParameter, zipCodeParameter, birthdayParameter)
    End Function

    Public Overridable Function usp_InsertSurveyData(chartNum As String, ethnicity As Nullable(Of Integer), gender As Nullable(Of Integer), zipCode As Nullable(Of Integer), birthday As Nullable(Of Date)) As Integer
        Dim chartNumParameter As ObjectParameter = If(chartNum IsNot Nothing, New ObjectParameter("ChartNum", chartNum), New ObjectParameter("ChartNum", GetType(String)))

        Dim ethnicityParameter As ObjectParameter = If(ethnicity.HasValue, New ObjectParameter("Ethnicity", ethnicity), New ObjectParameter("Ethnicity", GetType(Integer)))

        Dim genderParameter As ObjectParameter = If(gender.HasValue, New ObjectParameter("Gender", gender), New ObjectParameter("Gender", GetType(Integer)))

        Dim zipCodeParameter As ObjectParameter = If(zipCode.HasValue, New ObjectParameter("ZipCode", zipCode), New ObjectParameter("ZipCode", GetType(Integer)))

        Dim birthdayParameter As ObjectParameter = If(birthday.HasValue, New ObjectParameter("Birthday", birthday), New ObjectParameter("Birthday", GetType(Date)))

        Return DirectCast(Me, IObjectContextAdapter).ObjectContext.ExecuteFunction("usp_InsertSurveyData", chartNumParameter, ethnicityParameter, genderParameter, zipCodeParameter, birthdayParameter)
    End Function

    <DbFunction("DentalSurveyEntities", "fn_GetDentalCodes")>
    Public Overridable Function fn_GetDentalCodes() As IQueryable(Of fn_GetDentalCodes_Result)
         Return DirectCast(Me, IObjectContextAdapter).ObjectContext.CreateQuery(Of fn_GetDentalCodes_Result)("[DentalSurveyEntities].[fn_GetDentalCodes]()")
    End Function

    Public Overridable Function usp_GetSurveyData() As ObjectResult(Of usp_GetSurveyData_Result)
        Return DirectCast(Me, IObjectContextAdapter).ObjectContext.ExecuteFunction(Of usp_GetSurveyData_Result)("usp_GetSurveyData")
    End Function

End Class
