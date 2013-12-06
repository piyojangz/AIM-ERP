Imports System.Configuration.ConfigurationManager

Public Class WriteLogFile
    Public Shared Function Writelog(ByVal Dataline As String) As Boolean
        Dim Fileobj As System.IO.StreamWriter = Nothing
        Dim LogPath As String
        Dim LogName As String

        Try
            LogPath = AppSettings("LogPath")
            LogName = AppSettings("LogName")

            Fileobj = New System.IO.StreamWriter(LogPath & LogName & Now.ToString("yyyyMMdd") & ".txt", IO.FileMode.Append)
            Fileobj.WriteLine(Now.ToString("dd/MM/yyyy hh:mm:ss") & " " & Dataline)
            Fileobj.Flush()
            Fileobj.Close()
            Return True
        Catch ex As Exception
            Return False
        Finally
            If Not IsNothing(Fileobj) Then
                Fileobj.Close()
                Fileobj = Nothing
            End If
        End Try

    End Function
End Class
