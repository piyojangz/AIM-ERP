Imports System.Configuration.ConfigurationManager
Imports System.Globalization

Public Class BaseWebForm
    Inherits System.Web.UI.Page

#Region "ENum"
    Enum EMessageIcon
        [Error]
        [Infomation]
        [QuestionMark]
        [Warning]
    End Enum

    Enum EMessageType
        [Alert]
        [Confirm]
    End Enum

    Enum EToolBarButton
        [New]
        Save
        Clear
        Back
        [Next]
        Delete
        Print
        Attach
        Search
    End Enum
#End Region

#Region "Sub"
    Public Sub AlertMessage(ByVal Message As String)
        Dim Script As String
        Script = "alert('" & Message & "');"
        Me.RegisterClientScript(Script)
    End Sub

    Public Sub AlertMessageAndClose(ByVal Message As String)
        Dim Script As String
        Script = "alert('" & Message & "');"
        Script &= "window.close();"
        Me.RegisterClientScript(Script)
    End Sub

    Public Sub SetFocused(ByVal Control As Control)
        ScriptManager.GetCurrent(Page).SetFocus(Control)
    End Sub

    Public Sub RegisterClientScript(ByVal Script As String)
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), Script, True)
    End Sub

    Public Sub SetDefaultButon(ByVal _TextBoxEnter As TextBox, ByVal defaultButton As Object)
        _TextBoxEnter.Attributes.Add("onkeydown", "SetDefaultButon(" & defaultButton.ClientID & ",null,event)")
    End Sub

    Public Sub Blur()
        Me.RegisterClientScript("$('.blurarea').addClass('blur');")
    End Sub

    Public Sub EnableToolBar(ToolBar As ToolBar _
                             , EnableNew As Boolean _
                             , EnableSave As Boolean _
                             , EnableClear As Boolean _
                             , EnableBack As Boolean _
                             , EnableNext As Boolean _
                             , EnableDelete As Boolean _
                             , EnablePrint As Boolean _
                             , EnableAttach As Boolean _
                             , EnableSearch As Boolean)
        With ToolBar
            With ToolBar
                .EnableNew = EnableNew
                .EnableSave = EnableSave
                .EnableClear = EnableClear
                .EnableBack = EnableBack
                .EnableNext = EnableNext
                .EnableDelete = EnableDelete
                .EnablePrint = EnablePrint
                .EnableAttach = EnableAttach
                .EnableSearch = EnableSearch
            End With
        End With
    End Sub
#End Region

#Region "Function"
    Public Function MessageIconPath(ByVal MessageIcon As EMessageIcon) As String
        Dim Path As String = ""
        Select Case MessageIcon
            Case EMessageIcon.Error
                Path = "imgError.PNG"
            Case EMessageIcon.Infomation
                Path = "imgInformation.PNG"
            Case EMessageIcon.QuestionMark
                Path = "imgQuestionMark.PNG"
            Case EMessageIcon.Warning
                Path = "imgWarning.PNG"
            Case Else
                Path = ""
        End Select
        Return "../../image/message/" & Path
    End Function

    Public Function GetDateString(DateValue As Date) As String
        Try
            Return String.Format(New CultureInfo(AppSettings("CultureInfo")), AppSettings("DateFormat"), DateValue)
        Catch ex As Exception

        End Try

        Return ""
    End Function

    Public Function GetDate(DateString As String) As Date
        Try
            Return Date.Parse(DateString, CultureInfo.GetCultureInfo("en-GB"))
        Catch ex As Exception

        End Try

        Return Nothing
    End Function
#End Region
End Class
