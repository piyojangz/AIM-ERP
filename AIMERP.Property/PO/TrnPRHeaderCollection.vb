Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPRHeaderCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPRHeader)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPRHeader)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPRHeader))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPRHeader))
                    Me._Item = New List(Of TrnPRHeader)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPRHeader)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPRHeader)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPRHeaderCollection
                    Return New TrnPRHeaderCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

