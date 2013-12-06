Public Class ProcessResult
    Public Property IsSuccess As EIsSuccess
    Public Property ResultMessage As String
    Public Property ErrorCode As String
    Public Property ErrorDesc As String
    Public Property ErrorEx As String

    Public Sub New()
        Me.IsSuccess = EIsSuccess.Success
        Me.ResultMessage = ""
        Me.ErrorCode = ""
        Me.ErrorDesc = ""
        Me.ErrorEx = ""
    End Sub
End Class

Public Enum EIsSuccess
    Success = 1
    [Error] = 0
    SuccessWithError = 2
End Enum