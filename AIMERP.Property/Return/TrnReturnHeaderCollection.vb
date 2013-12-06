Namespace Sale
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnReturnHeaderCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnReturnHeader)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnReturnHeader)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnReturnHeader))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnReturnHeader))
                    Me._Item = New List(Of TrnReturnHeader)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnReturnHeader)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnReturnHeader)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnReturnHeaderCollection
                    Return New TrnReturnHeaderCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

