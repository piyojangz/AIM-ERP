Namespace Demo
    Namespace ServiceContract
        Namespace DataContract
            Public Class FieldCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of Field)
#End Region

#Region "Property"
                Public Property Items As List(Of Field)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of Field))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of Field))
                    Me._Item = New List(Of Field)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As Field)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of Field)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As FieldCollection
                    Return New FieldCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

