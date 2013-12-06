Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPQUOHeaderCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPQUOHeader)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPQUOHeader)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPQUOHeader))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPQUOHeader))
                    Me._Item = New List(Of TrnPQUOHeader)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPQUOHeader)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPQUOHeader)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPQUOHeaderCollection
                    Return New TrnPQUOHeaderCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

