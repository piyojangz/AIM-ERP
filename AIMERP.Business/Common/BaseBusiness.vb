Imports System.Reflection
Imports System.Diagnostics
Imports System.Collections.Generic
Imports System.Data
Imports System
Imports AIMERP.DataAccess

Public Class BaseBusiness
#Region "Properties"
    Public DataAccess As BaseDataAccess
    Public ds As DataSet
    Property ErrorCodeString As String
    Property ErrorDescription As String
#End Region

#Region "Utility"
    Protected Function NVL(ByVal Obj As Object) As Object
        If IsDBNull(Obj) Then
            Return Nothing
        Else
            Return Obj
        End If
    End Function

    Public Function NullOrEmpty(ByVal Value As String) As String
        If String.IsNullOrEmpty(Value) Then
            Return ""
        End If
        Return Value
    End Function
#End Region

#Region "Sub"
    Sub New()
        Me.DataAccess = New BaseDataAccess
        Me.ds = New DataSet
    End Sub

    Public Sub Execute(ByVal Field As Object, ByVal ESPName As Object)
        Me.ds = Me.DataAccess.Execute(Field, ESPName.ToString)
    End Sub

    Public Sub DisposeObject(ByVal ObjectToDispose As Object)
        If Not IsNothing(ObjectToDispose) Then
            ObjectToDispose = Nothing
        End If
    End Sub
#End Region

#Region "Function"
    Public Function MapDataToPropertyList(Of T)() As List(Of T)
        Dim ListOfT As New List(Of T)()

        Try
            For Each dr As DataRow In Me.ds.Tables(0).Rows
                ListOfT.Add(Me.MapDataToProperty(Of T)(dr))
            Next
        Catch ex As Exception

        Finally

        End Try

        Return ListOfT
    End Function

    Public Function MapDataToPropertyList(Of T)(ByVal dt As DataTable) As List(Of T)
        Dim ListOfT As New List(Of T)()

        Try
            For Each dr As DataRow In dt.Rows
                ListOfT.Add(Me.MapDataToProperty(Of T)(dr))
            Next
        Catch ex As Exception

        Finally

        End Try

        Return ListOfT
    End Function

    Protected Function MapDataToProperty(Of T)(ByVal dr As DataRow) As T
        Dim PropertyObject As T
        PropertyObject = Activator.CreateInstance(Of T)()

        Try
            For Each Column As DataColumn In dr.Table.Columns
                Try
                    CallByName(PropertyObject, Column.ColumnName, CallType.Set, dr(Column.ColumnName))
                Catch ex As Exception

                End Try
            Next
        Catch ex As Exception

        Finally

        End Try

        Return PropertyObject
    End Function
#End Region
End Class
