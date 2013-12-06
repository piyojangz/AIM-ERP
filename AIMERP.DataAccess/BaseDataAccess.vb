Imports System.Data.SqlClient
Imports System.Configuration.ConfigurationManager

Public Class BaseDataAccess

#Region "Property"
    Public Property CommandText As String
    Public Property SqlCommand As SqlCommand
    Public Property SqlConnection As SqlConnection
    Public Property SqlDataAdapter As SqlDataAdapter
#End Region

#Region "Method"
    Sub New()
        Me.SqlConnection = New SqlConnection
        Me.SqlConnection.ConnectionString = ConnectionStrings(AppSettings("ConnectionString")).ToString

        Me.SqlCommand = New SqlCommand
        Me.SqlCommand.CommandType = CommandType.StoredProcedure
        Me.SqlCommand.Connection = Me.SqlConnection
    End Sub
#End Region

#Region "Function"
    Public Function Execute(ByVal PropertyObject As Object, ByVal SPName As Object) As DataSet
        Me.SqlCommand.CommandText = SPName.ToString
        Me.AssignParameter(PropertyObject)

        Try
            Return Me.ExecuteStoredProcedure()
        Catch ex As Exception

        Finally

        End Try
    End Function

    Public Function ExecuteStoredProcedure() As Object
        Dim ds As New DataSet

        Try
            Me.SqlConnection.Open()

            Me.SqlDataAdapter = New SqlDataAdapter(Me.SqlCommand)
            Me.SqlDataAdapter.Fill(ds)

            ' เพิ่ม Seq ให้กับ ข้อมูลในตาราง
            ds.Tables(0).Columns.Add("_Seq_", GetType(Integer))
            ds.Tables(0).Columns.Add("_Class_")
            For i As Integer = 0 To ds.Tables(0).Rows.Count - 1
                ds.Tables(0).Rows(i)("_Seq_") = i + 1

                If i Mod 2 = 0 Then
                    ds.Tables(0).Rows(i)("_Class_") = "listItemEven"
                Else
                    ds.Tables(0).Rows(i)("_Class_") = "listItemOdd"
                End If
            Next
            ds.AcceptChanges()

            Return ds
        Catch ex As Exception
            Return False
        Finally
            Me.SqlConnection.Close()
            Me.SqlConnection.Dispose()
            Me.DisposeSQL()
        End Try

        Return False
    End Function
#End Region

#Region "Sub"
    Public Sub AssignParameter(ByVal PropertyObject As Object)
        Dim Properties = PropertyObject.GetType.GetProperties()

        Try
            For Each PropertyInfo As System.Reflection.PropertyInfo In Properties
                Select Case PropertyInfo.Name
                    Case "_Class_", "_Seq_"
                    Case Else
                        Dim BaseProperty As New [Property].BaseProperty
                        Dim Value As Object
                        Value = BaseProperty.GetPropertyValue(PropertyObject _
                                                              , PropertyInfo.Name)

                        With Me.SqlCommand.Parameters
                            Select Case PropertyInfo.PropertyType.Name
                                Case "String"
                                    If String.IsNullOrEmpty(Value) Then
                                        Value = ""
                                    End If

                                    .Add(Me.ManageParameter("@" & PropertyInfo.Name, SqlDbType.NVarChar, Value))
                                Case "Integer", "Int16", "Int32", "Int64"
                                    .Add(Me.ManageParameter("@" & PropertyInfo.Name, SqlDbType.Int, Value))
                                Case "Decimal"
                                    .Add(Me.ManageParameter("@" & PropertyInfo.Name, SqlDbType.Decimal, Value))
                                Case "Boolean"
                                Case "Date"
                                Case "ProcessResult"
                                    ' Do Nothing
                                Case "Byte[]"
                                    If Value Is Nothing Then
                                        Value = DBNull.Value
                                    End If

                                    .Add(Me.ManageParameter("@" & PropertyInfo.Name, SqlDbType.Image, Value))
                                Case Else

                            End Select
                        End With
                End Select
            Next
        Catch ex As Exception

        End Try
    End Sub

    Public Sub DisposeObject(ByVal ObjectToDispose As Object)
        If Not IsNothing(ObjectToDispose) Then
            ObjectToDispose = Nothing
        End If
    End Sub

    Public Sub DisposeSQL()
        Me.DisposeObject(Me.SqlCommand)
        Me.DisposeObject(Me.SqlConnection)
        Me.DisposeObject(Me.SqlDataAdapter)
    End Sub
#End Region

#Region "Overloads Function"
    Public Overloads Function ManageParameter(ByVal SqlParameterName As String _
                                            , ByVal SqlType As SqlDbType _
                                            , ByVal Value As Object) As SqlParameter
        Dim SqlParameter As New SqlParameter

        SqlParameter.ParameterName = SqlParameterName
        SqlParameter.SqlDbType = SqlType
        SqlParameter.Value = Value

        Return SqlParameter
    End Function

    Public Overloads Function ManageParameter(ByVal SqlParameterName As String _
                                            , ByVal SqlType As SqlDbType _
                                            , ByVal ParameterDirection As ParameterDirection) As SqlParameter
        Dim SqlParameter As New SqlParameter

        With SqlParameter
            .ParameterName = SqlParameterName
            .SqlDbType = SqlType
            .Direction = ParameterDirection
        End With

        Return SqlParameter
    End Function

    Public Overloads Function ManageParameter(ByVal SqlParameterName As String _
                                            , ByVal SqlType As SqlDbType _
                                            , ByVal Size As Integer _
                                            , ByVal ParameterDirection As ParameterDirection) As SqlParameter
        Dim SqlParameter As New SqlParameter

        With SqlParameter
            .ParameterName = SqlParameterName
            .SqlDbType = SqlType
            .Size = Size
            .Direction = ParameterDirection
        End With

        Return SqlParameter
    End Function

    Public Overloads Function ManageParameter(ByVal SqlParameterName As String _
                                            , ByVal SqlType As SqlDbType _
                                            , ByVal ParameterDirection As ParameterDirection _
                                            , ByVal Value As Object) As SqlParameter
        Dim SqlParameter As New SqlParameter

        With SqlParameter
            .ParameterName = SqlParameterName
            .SqlDbType = SqlType
            .Direction = ParameterDirection
            .Value = Value
        End With

        Return SqlParameter
    End Function

    Public Overloads Function ManageParameter(ByVal SqlParameterName As String _
                                            , ByVal SqlType As SqlDbType _
                                            , ByVal Size As Integer _
                                            , ByVal ParameterDirection As ParameterDirection _
                                            , ByVal Value As Object) As SqlParameter
        Dim SqlParameter As New SqlParameter

        With SqlParameter
            .ParameterName = SqlParameterName
            .SqlDbType = SqlType
            .Size = Size
            .Direction = ParameterDirection
            .Value = Value
        End With

        Return SqlParameter
    End Function
#End Region
End Class
