Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPOQUODetailCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPOQUODetail)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPOQUODetail)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPOQUODetail))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPOQUODetail))
                    Me._Item = New List(Of TrnPOQUODetail)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPOQUODetail)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPOQUODetail)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPOQUODetailCollection
                    Return New TrnPOQUODetailCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

