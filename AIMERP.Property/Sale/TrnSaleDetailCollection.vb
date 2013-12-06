Namespace Sale
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnSaleDetailCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnSaleDetail)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnSaleDetail)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnSaleDetail))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnSaleDetail))
                    Me._Item = New List(Of TrnSaleDetail)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnSaleDetail)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnSaleDetail)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnSaleDetailCollection
                    Return New TrnSaleDetailCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

