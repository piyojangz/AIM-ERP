Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPQUODetailCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPQUODetail)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPQUODetail)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPQUODetail))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPQUODetail))
                    Me._Item = New List(Of TrnPQUODetail)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPQUODetail)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPQUODetail)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPQUODetailCollection
                    Return New TrnPQUODetailCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

