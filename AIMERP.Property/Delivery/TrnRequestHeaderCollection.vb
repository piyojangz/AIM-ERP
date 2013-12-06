﻿Namespace Delivery
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnRequestHeaderCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnRequestHeader)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnRequestHeader)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnRequestHeader))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnRequestHeader))
                    Me._Item = New List(Of TrnRequestHeader)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnRequestHeader)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnRequestHeader)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnRequestHeaderCollection
                    Return New TrnRequestHeaderCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

