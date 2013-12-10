Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPOQUOPriceCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPOQUOPrice)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPOQUOPrice)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPOQUOPrice))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPOQUOPrice))
                    Me._Item = New List(Of TrnPOQUOPrice)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPOQUOPrice)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPOQUOPrice)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPOQUOPriceCollection
                    Return New TrnPOQUOPriceCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

