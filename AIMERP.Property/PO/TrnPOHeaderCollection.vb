Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPOHeaderCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPOHeader)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPOHeader)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPOHeader))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPOHeader))
                    Me._Item = New List(Of TrnPOHeader)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPOHeader)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPOHeader)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPOHeaderCollection
                    Return New TrnPOHeaderCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

