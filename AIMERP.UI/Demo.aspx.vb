Imports AIMERP.Property.Demo.ServiceContract.DataContract
Imports AIMERP.Business.Demo.ServiceContract

Public Class Demo
    Inherits BaseWebForm

#Region "Declare"
    Dim Field As Field
    Dim FieldCollection As FieldCollection
    Dim FieldBusiness As FieldBusiness
#End Region

#Region "Property"

#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.Page.IsPostBack Then
            Me.EnableToolBar(Me.ToolBar, True, False, True, False, False, False, False, False, True)
        Else

        End If

        Me.Master.FunctionName = "Framework Demo"
        Me.RepeaterNavigateBar.TargetRepeater = Me.rptResult
    End Sub
#End Region

#Region "Control Method"
    Private Sub ToolBar_NewClick(sender As Object, e As System.EventArgs) Handles ToolBar.NewClick
        Me.ClearField()
        Me.lblStatus.Text = "New"
        Me.txtId.Enabled = False
        Me.EnableToolBar(Me.ToolBar, False, True, True, False, False, False, False, False, True)
    End Sub

    Private Sub ToolBar_SaveClick(sender As Object, e As System.EventArgs) Handles ToolBar.SaveClick
        Select Case Me.lblStatus.Text
            Case "New"
                Me.InsertField()
            Case "Edit"
                Me.UpdateField()
        End Select
    End Sub

    Private Sub ToolBar_ClearClick(sender As Object, e As System.EventArgs) Handles ToolBar.ClearClick
        Me.ClearField()
    End Sub

    Private Sub ToolBar_BackClick(sender As Object, e As System.EventArgs) Handles ToolBar.BackClick

    End Sub

    Private Sub ToolBar_NextClick(sender As Object, e As System.EventArgs) Handles ToolBar.NextClick

    End Sub

    Private Sub ToolBar_DeleteClick(sender As Object, e As System.EventArgs) Handles ToolBar.DeleteClick

    End Sub

    Private Sub ToolBar_PrintClick(sender As Object, e As System.EventArgs) Handles ToolBar.PrintClick

    End Sub

    Private Sub ToolBar_AttachClick(sender As Object, e As System.EventArgs) Handles ToolBar.AttachClick

    End Sub

    Private Sub ToolBar_SearchClick(sender As Object, e As System.EventArgs) Handles ToolBar.SearchClick
        Me.SelectField()
    End Sub
#End Region

#Region "Function"
    Private Function ValidateValue() As Boolean
        Try
            Select Case True
                Case Me.txtField1.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("Please fill data [Field1]" _
                                            , Me.txtField1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                Case Me.txtField2.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("Please fill data [Field2]" _
                                            , Me.txtField2 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                Case Me.txtField3.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("Please fill data [Field3]" _
                                            , Me.txtField3 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                Case Me.txtField4.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("Please fill data [Field4]" _
                                            , Me.txtField4 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
            End Select
        Catch ex As Exception

        End Try

        Return True
    End Function
#End Region

#Region "sub"
    Private Sub InsertField()
        Try
            If Me.ValidateValue() Then
                Me.AssignField()
                Me.FieldBusiness = New FieldBusiness
                Me.FieldCollection = Me.FieldBusiness.InsertData(Me.Field)

                If Me.FieldCollection.Items.Count <> 0 Then
                    Me.SelectField()
                    Me.MessageBox.ShowDialog("Data saved." _
                                            , Me.txtField1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Infomation)
                    Me.ClearField()
                Else
                    Me.MessageBox.ShowDialog("Cannot saved data." _
                                            , Me.txtField1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Error)
                End If
            Else

            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub SelectField()
        Try
            Me.AssignField()
            Me.FieldBusiness = New FieldBusiness
            Me.FieldCollection = Me.FieldBusiness.SelectAllData(Me.Field)

            If Me.FieldCollection.Items.Count <> 0 Then
                Me.RepeaterNavigateBar.CurrentSeq = 1
                Me.RepeaterNavigateBar.HighLight = ""
                Me.RepeaterNavigateBar.TargetRepeater = Me.rptResult
                Me.RepeaterNavigateBar.DataSource = Me.FieldCollection
                Me.RepeaterNavigateBar.BindData()
                Me.pnlResult.Visible = True
            Else
                Me.pnlResult.Visible = False
                Me.MessageBox.ShowDialog("No data found." _
                                        , Me.txtField1 _
                                        , EMessageType.Alert _
                                        , EMessageIcon.Warning)
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub UpdateField()
        Try
            If Me.ValidateValue() Then
                Me.AssignField()
                Me.FieldBusiness = New FieldBusiness
                Me.FieldCollection = Me.FieldBusiness.UpdateData(Me.Field)

                If Me.FieldCollection.Items.Count <> 0 Then
                    Me.SelectField()
                    Me.MessageBox.ShowDialog("Data saved." _
                                            , Me.txtField1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Infomation)
                    Me.ClearField()
                Else
                    Me.MessageBox.ShowDialog("Cannot saved data." _
                                            , Me.txtField1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Error)
                End If
            Else

            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub AssignField()
        Me.Field = New Field

        With Field
            .Id = IIf(Me.txtId.Text.ToString.Trim = "", 0, Me.txtId.Text)
            .Field1 = Me.txtField1.Text.Trim
            .Field2 = Me.txtField2.Text.Trim
            .Field3 = Me.txtField3.Text.Trim
            .Field4 = Me.txtField4.Text.Trim
        End With
    End Sub

    Private Sub ClearField()
        With Me
            .txtId.Text = ""
            .txtField1.Text = ""
            .txtField2.Text = ""
            .txtField3.Text = ""
            .txtField4.Text = ""
        End With

        Me.txtId.Enabled = True
        Me.lblStatus.Text = "New"
        Me.EnableToolBar(Me.ToolBar, True, False, True, False, False, False, False, False, True)
    End Sub
#End Region

    Private Sub rptResult_ItemCommand(source As Object, e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles rptResult.ItemCommand
        Try
            Select Case e.CommandName
                Case "Edit"
                    Dim Index As Integer = ((Me.RepeaterNavigateBar.CurrentPage - 1) * Me.RepeaterNavigateBar.RecordPerPage) + e.Item.ItemIndex
                    Dim Field As New Field
                    Dim Row As Integer
                    Dim Label As Label
                    Label = CType(Me.rptResult.Items(e.Item.ItemIndex).FindControl("lblSeq"), Label)
                    Row = Label.Text - 1
                    Field = Me.RepeaterNavigateBar.DataSource.Items(Row)

                    With Me
                        .txtId.Text = Field.Id
                        .txtId.Enabled = False
                        .txtField1.Text = Field.Field1.Trim
                        .txtField2.Text = Field.Field2.Trim
                        .txtField3.Text = Field.Field3.Trim
                        .txtField4.Text = Field.Field4.Trim
                        .lblStatus.Text = "Edit"
                        .EnableToolBar(Me.ToolBar, False, True, True, False, False, False, False, False, False)
                    End With
            End Select
        Catch ex As Exception

        End Try
    End Sub

    Private Sub pusField_SearchClick(sender As Object, e As System.EventArgs) Handles pusField.SearchClick
        Try
            Me.AssignField()
            Me.FieldBusiness = New FieldBusiness
            Me.FieldCollection = Me.FieldBusiness.SelectAllData(Me.Field)

            Me.pusField.DataSource = Me.FieldCollection.Items
            'Me.pusField.KeyHeader = "Id"
            'Me.pusField.KeyField = "Id"
            'Me.pusField.KeyTarget = "txtId"
            'Me.pusField.ValueHeader = "Field 1"
            'Me.pusField.ValueField = "Field1"
            'Me.pusField.ValueTarget = "txtField1"
            Me.pusField.BindData()
        Catch ex As Exception

        End Try
    End Sub
End Class