Namespace Sale
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnSQUOHeaderCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnSQUOHeader)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnSQUOHeader)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnSQUOHeader))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnSQUOHeader))
                    Me._Item = New List(Of TrnSQUOHeader)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnSQUOHeader)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnSQUOHeader)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnSQUOHeaderCollection
                    Return New TrnSQUOHeaderCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

