Namespace Sale
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnReturnDetailCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnReturnDetail)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnReturnDetail)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnReturnDetail))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnReturnDetail))
                    Me._Item = New List(Of TrnReturnDetail)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnReturnDetail)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnReturnDetail)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnReturnDetailCollection
                    Return New TrnReturnDetailCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

