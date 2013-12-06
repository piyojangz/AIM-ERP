Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPODetailCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPODetail)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPODetail)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPODetail))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPODetail))
                    Me._Item = New List(Of TrnPODetail)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPODetail)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPODetail)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPODetailCollection
                    Return New TrnPODetailCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

