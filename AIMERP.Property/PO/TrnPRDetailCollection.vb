Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPRDetailCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPRDetail)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPRDetail)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPRDetail))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPRDetail))
                    Me._Item = New List(Of TrnPRDetail)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPRDetail)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPRDetail)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPRDetailCollection
                    Return New TrnPRDetailCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

