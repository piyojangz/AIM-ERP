Imports System.Web.Configuration.WebConfigurationManager

Public Class RepeaterNavigateBar
    Inherits System.Web.UI.UserControl

#Region "Declare"
    Private _TargetRepeater As Repeater
    Private _DisplaySource As Object
    Private _EDisplayRecord As EDisplayRecord
    Private _HighLight As String
    Private NextFirstRecord As Integer
    Private NextLastRecord As Integer
#End Region

#Region "ENum"
    Enum EDisplayRecord
        [DisplayRecord_15]
        [DisplayRecord_10]
        [DisplayRecord_5]
    End Enum
#End Region

#Region "Property"
    Public Property TargetRepeater() As Repeater
        Get
            Return Me._TargetRepeater
        End Get
        Set(ByVal value As Repeater)
            Me._TargetRepeater = value
        End Set
    End Property

    Public Property DataSource() As Object
        Get
            Return Session("DataSource" & Me.UniqueSession)
        End Get
        Set(ByVal value As Object)
            Session("DataSource" & Me.UniqueSession) = value
        End Set
    End Property

    Public Property DisplaySource() As Object
        Get
            Return Me._DisplaySource
        End Get
        Set(ByVal value As Object)
            Me._DisplaySource = value
        End Set
    End Property

    Public Property TotalRecord() As Integer
        Get
            Return CInt(Me.lblTotalRecord.Text)
        End Get
        Set(ByVal value As Integer)
            Me.lblTotalRecord.Text = value
        End Set
    End Property

    Public Property CurrentPage() As Integer
        Get
            Return CInt(Me.lblCurrentPage.Text)
        End Get
        Set(ByVal value As Integer)
            Me.lblCurrentPage.Text = value
        End Set
    End Property

    Public Property CurrentSeq() As Integer
        Get
            Return CInt(Me.hdfCurrentSeq.Value)
        End Get
        Set(ByVal value As Integer)
            Me.hdfCurrentSeq.Value = value
        End Set
    End Property

    Public Property TotalPage() As Integer
        Get
            Return CInt(Me.lblTotalPage.Text)
        End Get
        Set(ByVal value As Integer)
            Me.lblTotalPage.Text = value
        End Set
    End Property

    Public ReadOnly Property RecordPerPage() As Integer
        Get
            Select Case Me._EDisplayRecord
                Case EDisplayRecord.DisplayRecord_15
                    Return AppSettings("DisplayRecord_15")
                Case EDisplayRecord.DisplayRecord_10
                    Return AppSettings("DisplayRecord_10")
                Case EDisplayRecord.DisplayRecord_5
                    Return AppSettings("DisplayRecord_5")
                Case Else
                    Return AppSettings("DisplayRecord_10")
            End Select
        End Get
    End Property

    Public Property DisplayRecord() As EDisplayRecord
        Get
            Return Me._EDisplayRecord
        End Get
        Set(ByVal value As EDisplayRecord)
            Me._EDisplayRecord = value
        End Set
    End Property

    Public ReadOnly Property UniqueSession()
        Get
            Return Me.Parent.ClientID & Me.ClientID & Me.Session.SessionID
        End Get
    End Property

    Public Property HighLight() As String
        Get
            Return Session("HighLight" & Me.UniqueSession)
        End Get
        Set(ByVal value As String)
            Session("HighLight" & Me.UniqueSession) = value
        End Set
    End Property
#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.HighLight = ""
        Else

        End If
    End Sub
#End Region

#Region "Control Method"
    Protected Sub imbFrist_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles imbFirst.Click
        Me.CurrentPage = 1
        Me.BindDataByPage()
    End Sub

    Protected Sub imbBack_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles imbBack.Click
        If Me.CurrentPage <> 1 Then
            Me.CurrentPage -= 1
        End If
        Me.BindDataByPage()
    End Sub

    Protected Sub imbNext_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles imbNext.Click
        If Me.CurrentPage <> Me.TotalPage Then
            Me.CurrentPage += 1
        End If
        Me.BindDataByPage()
    End Sub

    Protected Sub imbLast_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles imbLast.Click
        Me.CurrentPage = Me.TotalPage
        Me.BindDataByPage()
    End Sub

    Protected Sub ddlPage_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlPage.SelectedIndexChanged
        Me.CurrentPage = Me.ddlPage.SelectedValue
        Me.BindDataByPage()
    End Sub
#End Region

#Region "Sub"
    Public Sub BindData()
        If Not IsNothing(Me.DataSource) Then
            Me.SetPage()
            Me.BindDataByPage()
        End If
    End Sub

    Private Sub BindDataByPage()
        Me.SetFirstAndLastRecord()
        Me.EnableAndDisableNavigateButton()
        Me.ManageDisplayDataSource()
        Me.SetCssClass()
        Me.SetAndBindRepeaterDataSource()
    End Sub

    Public Sub SortData(ByVal ColumnName As String)
        If hdfCurrentCol.Value <> ColumnName Then
            Session("Desc" & Me.UniqueSession) = IIf(ColumnName = "_Seq_" And hdfCurrentCol.Value = "", True, False)
            hdfCurrentCol.Value = ColumnName
        Else
            Session("Desc" & Me.UniqueSession) = Not Session("Desc" & Me.UniqueSession)
        End If
        Me.DataSource.DefaultView.Sort = ColumnName & " " & IIf(Session("Desc" & Me.UniqueSession), "desc", "asc")

        Dim xDt As New DataTable
        xDt = Me.DataSource.DefaultView.ToTable
        Me.DataSource = Nothing
        Me.DataSource = xDt

        Dim Seq As Integer
        For Each dr As DataRow In Me.DataSource.Rows
            Seq += 1
            dr("_Seq_") = Seq
        Next
        Me.HighLight = ""
        Me.BindDataByPage()
    End Sub

    Private Sub SetPage()
        Me.TotalRecord = Me.DataSource.Items.Count
        Me.TotalPage = Me.TotalRecord / Me.RecordPerPage
        Me.TotalPage = IIf(Me.TotalPage = 0, 1, Me.TotalPage)

        If (Me.TotalPage * Me.RecordPerPage) - Me.TotalRecord < 0 Then
            Me.TotalPage += 1
        End If

        'Me.CurrentPage = IIf(Me.CurrentPage = 0, 1, Me.CurrentPage)

        If Me.CurrentSeq <> 0 Then
            If Me.CurrentSeq Mod Me.RecordPerPage <> 0 Then
                Me.CurrentPage = (Me.CurrentSeq \ Me.RecordPerPage) + 1
            Else
                Me.CurrentPage = (Me.CurrentSeq \ Me.RecordPerPage)
            End If
        End If

        If Me.CurrentPage > Me.TotalPage Then
            Me.CurrentPage = Me.TotalPage
        End If

        Me.ddlPage.Items.Clear()

        For i As Integer = 1 To Me.TotalPage
            Me.ddlPage.Items.Add(i)
        Next
    End Sub

    Private Sub SetFirstAndLastRecord()
        If Me.CurrentPage = 1 Then
            NextFirstRecord = 0
            NextLastRecord = Me.RecordPerPage - 1
        Else
            NextFirstRecord = ((Me.CurrentPage - 1) * Me.RecordPerPage)
            NextLastRecord = NextFirstRecord + Me.RecordPerPage - 1
        End If

        If NextLastRecord > Me.TotalRecord - 1 Then
            NextLastRecord = Me.TotalRecord - 1
        End If
    End Sub

    Private Sub EnableAndDisableNavigateButton()
        Me.ddlPage.Enabled = True
        Select Case True
            Case Me.TotalPage = 1
                Me.imbFirst.Enabled = False
                Me.imbBack.Enabled = False
                Me.imbNext.Enabled = False
                Me.imbLast.Enabled = False
                Me.ddlPage.Enabled = False
            Case Me.CurrentPage = 1
                Me.imbFirst.Enabled = False
                Me.imbBack.Enabled = False
                Me.imbNext.Enabled = True
                Me.imbLast.Enabled = True
            Case Me.CurrentPage = Me.TotalPage
                Me.imbFirst.Enabled = True
                Me.imbBack.Enabled = True
                Me.imbNext.Enabled = False
                Me.imbLast.Enabled = False
            Case Else
                Me.imbFirst.Enabled = True
                Me.imbBack.Enabled = True
                Me.imbNext.Enabled = True
                Me.imbLast.Enabled = True
        End Select
    End Sub

    Private Sub ManageDisplayDataSource()
        Me.DisplaySource = Me.DataSource.Clone()
        Me.DisplaySource.Items.Clear()

        Dim i As Integer = 0
        For Each Item In Me.DataSource.Items
            If i >= Me.NextFirstRecord And i <= Me.NextLastRecord Then
                Me.DisplaySource.Items.Add(Item)
            End If
            i += 1
        Next
    End Sub

    Private Sub SetAndBindRepeaterDataSource()
        Me.TargetRepeater.DataSource = Me.DisplaySource.Items
        Me.TargetRepeater.DataBind()
        Me.ddlPage.Text = Me.CurrentPage
    End Sub

    Private Sub SetCssClass()
        For i As Integer = 0 To Me.DisplaySource.Items.Count - 1
            If i Mod 2 <> 0 Then
                Me.DisplaySource.Items(i)._Class_ = "listItemOdd"
            Else
                Me.DisplaySource.Items(i)._Class_ = "listItemEven"
            End If
            If CStr(Me.DisplaySource.Items(i)._Seq_) = Me.HighLight Then
                Me.DisplaySource.Items(i)._Class_ = "listItemHighLight"
            End If
        Next
    End Sub
#End Region

#Region "Function"
    Public Function GetRecord(ByVal Row As Integer) As DataRow
        Return Me.DataSource.Rows(Row)
    End Function
#End Region
End Class