Namespace Sale
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnSQUODetailCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnSQUODetail)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnSQUODetail)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnSQUODetail))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnSQUODetail))
                    Me._Item = New List(Of TrnSQUODetail)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnSQUODetail)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnSQUODetail)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnSQUODetailCollection
                    Return New TrnSQUODetailCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

