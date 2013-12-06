Imports AIMERP.Utility.WriteLogFile

Public Class BaseProperty
    Public Property _Class_ As String
    Public Property _Seq_ As String
    Public Property ProcessResult As ProcessResult

    Sub New()
        Me.ProcessResult = New ProcessResult
    End Sub

    ' ดึงค่า Parameter ของ Property
    Public Function GetParameterList(ByVal PropertyObject As Object) As String
        Dim ParamString As String = ""
        Dim Properties = PropertyObject.GetType.GetProperties()

        Try
            For Each PropertyInfo As System.Reflection.PropertyInfo In Properties
                Dim Value As Object

                Value = Me.GetPropertyValue(PropertyObject _
                                            , PropertyInfo.Name)
                ParamString &= Me.GetParameterRecursiveChild(PropertyInfo.Name _
                                                             , Value _
                                                             , vbTab)
            Next
        Catch ex As Exception
            Writelog("BaseProperty.NormalType : " & ex.Message)
        Finally

        End Try

        Return vbNewLine & "<Param>" & vbNewLine & ParamString & "</Param>"
    End Function

    ' ดึงค่า Parameter ของ Property
    Public Function GetParameterRecursiveChild(ByVal PropertyName As String _
                                               , ByVal PropertyObject As Object _
                                               , ByVal ChildTab As String) As String
        Dim ParentsTab As String = ChildTab
        Dim ParamString As String = ""
        Dim Properties As Object = Nothing
        Dim LoopFlag As Boolean = False

        ChildTab &= vbTab

        Try
            If Not Me.NormalType(PropertyObject) Then

                Properties = PropertyObject.GetType.GetProperties()

                For Each PropertyInfo As System.Reflection.PropertyInfo In Properties
                    Dim Value As Object
                    Dim Skip As Boolean = False

                    Value = Me.GetPropertyValue(PropertyObject _
                                                , PropertyInfo.Name)

                    Try
                        ParamString &= Me.GetParameterRecursiveChild(PropertyInfo.Name _
                                                                     , Value _
                                                                     , ChildTab)
                        Skip = True
                    Catch ex As Exception
                        Skip = False
                    End Try

                    If Not Skip Then
                        Try
                            ParamString &= ChildTab & "<" & PropertyName & ">" & Value.ToString & "</" & PropertyName & ">" & vbNewLine
                        Catch ex As Exception
                            ParamString &= ChildTab & "<" & PropertyName & ">{Nothing}</" & PropertyName & ">" & vbNewLine
                        End Try
                    End If

                    LoopFlag = True
                Next
                'ParamString = ParamString.Substring(0, ParamString.Length - 1)

                If Not LoopFlag Then
                    ParamString &= ParentsTab & "<" & PropertyName & ">" & PropertyObject & "</" & PropertyName & ">" & vbNewLine
                Else
                    Return ParentsTab & "<" & PropertyName & ">" & vbNewLine & ParamString & ParentsTab & "</" & PropertyName & ">" & vbNewLine
                End If
            Else
                ParamString &= ParentsTab & "<" & PropertyName & ">" & PropertyObject & "</" & PropertyName & ">" & vbNewLine
            End If
        Catch ex As Exception
            ParamString &= ParentsTab & "<" & PropertyName & ">{Nothing}</" & PropertyName & ">" & vbNewLine
        End Try

        Return ParamString
    End Function

    Public Function NormalType(ByVal Value As Object) As Boolean
        Try
            Select Case True
                Case TypeOf Value Is Integer
                    Return True
                Case TypeOf Value Is String
                    Return True
                Case TypeOf Value Is Boolean
                    Return True
                Case TypeOf Value Is DateTime
                    Return True
                Case TypeOf Value Is Byte
                    Return True
                Case Else
                    Writelog("BaseProperty.NormalType : Type [" & Value.GetType.FullName & "] ")
                    Return False
            End Select
        Catch ex As Exception
            Writelog("BaseProperty.NormalType : " & ex.Message)
        End Try

        Return False
    End Function

    ' สร้าง Object ใหม่ขึ้นมาจาก Class
    Public Function GetNewObject(Of T)() As T
        Try
            Return DirectCast(GetType(T).GetConstructor(New Type() {}).Invoke(New Object() {}), T)
        Catch
            Return Nothing
        End Try
    End Function

    'ดึงค่า Property ออกมา
    Public Function GetPropertyValue(ByVal PropertyObject As Object _
                                     , ByVal PropertyName As String) As Object
        Dim PropertyInfo As System.Reflection.PropertyInfo
        Dim PropertyValue As Object = Nothing

        Try
            ' ดึงรายละเอียดของ Property ตามชื่อที่ส่งมา
            PropertyInfo = PropertyObject.GetType.GetProperty(PropertyName)
            ' ดึงค่า Property ออกมา
            PropertyValue = PropertyInfo.GetValue(PropertyObject _
                                                  , Reflection.BindingFlags.GetProperty, Nothing, Nothing, Nothing)
        Catch ex As Exception
            Writelog(ex.Message)
        End Try

        Return PropertyValue
    End Function
End Class
