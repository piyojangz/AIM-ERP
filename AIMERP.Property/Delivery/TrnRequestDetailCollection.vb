Namespace Delivery
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnRequestDetailCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnRequestDetail)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnRequestDetail)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnRequestDetail))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnRequestDetail))
                    Me._Item = New List(Of TrnRequestDetail)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnRequestDetail)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnRequestDetail)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnRequestDetailCollection
                    Return New TrnRequestDetailCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

