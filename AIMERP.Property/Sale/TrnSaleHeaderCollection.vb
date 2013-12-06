Namespace Sale
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnSaleHeaderCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnSaleHeader)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnSaleHeader)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnSaleHeader))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnSaleHeader))
                    Me._Item = New List(Of TrnSaleHeader)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnSaleHeader)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnSaleHeader)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnSaleHeaderCollection
                    Return New TrnSaleHeaderCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

