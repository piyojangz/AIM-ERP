﻿Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPOQUOHeaderCollection
                Inherits BaseProperty

#Region "Declare"
                Private _Item As List(Of TrnPOQUOHeader)
#End Region

#Region "Property"
                Public Property Items As List(Of TrnPOQUOHeader)
                    Get
                        Return Me._Item
                    End Get
                    Set(ByVal value As List(Of TrnPOQUOHeader))
                        Me._Item = value
                    End Set
                End Property
#End Region

#Region "Sub"
                Public Sub New(ByVal items As IEnumerable(Of TrnPOQUOHeader))
                    Me._Item = New List(Of TrnPOQUOHeader)
                    Me._Item.AddRange(items)
                End Sub

                Public Sub Add(ByVal item As TrnPOQUOHeader)
                    Me.Items.Add(item)
                End Sub

                Public Sub New()
                    Me._Item = New List(Of TrnPOQUOHeader)
                    Me.ProcessResult = New ProcessResult
                End Sub
#End Region

#Region "Function"
                Public Function Clone() As TrnPOQUOHeaderCollection
                    Return New TrnPOQUOHeaderCollection(Me.Items)
                End Function
#End Region

            End Class
        End Namespace
    End Namespace
End Namespace

