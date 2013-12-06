Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.DataAccess

'Namespace Sale
Namespace PO
    Namespace ServiceContract
        Public Class TrnPOQUOHeaderBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnPOQUOHeader As TrnPOQUOHeader) As TrnPOQUOHeaderCollection
                Dim TrnPOQUOHeaderCollection As New TrnPOQUOHeaderCollection

                Try
                    Me.Execute(TrnPOQUOHeader, ESPName.SpTrnPOQUOHeaderSelectAll)
                    TrnPOQUOHeaderCollection = New TrnPOQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUOHeaderCollection
            End Function

            Public Function SelectData(ByVal TrnPOQUOHeader As TrnPOQUOHeader) As TrnPOQUOHeaderCollection
                Dim TrnPOQUOHeaderCollection As New TrnPOQUOHeaderCollection

                Try
                    Me.Execute(TrnPOQUOHeader, ESPName.SpTrnPOQUOHeaderSelect)
                    TrnPOQUOHeaderCollection = New TrnPOQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUOHeaderCollection
            End Function

            Public Function InsertData(ByVal TrnPOQUOHeader As TrnPOQUOHeader) As TrnPOQUOHeaderCollection
                Dim TrnPOQUOHeaderCollection As New TrnPOQUOHeaderCollection

                Try
                    Me.Execute(TrnPOQUOHeader, ESPName.SpTrnPOQUOHeaderInsert)
                    TrnPOQUOHeaderCollection = New TrnPOQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUOHeaderCollection
            End Function

            Public Function UpdateData(ByVal TrnPOQUOHeader As TrnPOQUOHeader) As TrnPOQUOHeaderCollection
                Dim TrnPOQUOHeaderCollection As New TrnPOQUOHeaderCollection

                Try
                    Me.Execute(TrnPOQUOHeader, ESPName.SpTrnPOQUOHeaderUpdate)
                    TrnPOQUOHeaderCollection = New TrnPOQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUOHeaderCollection
            End Function


            Public Function DeleteData(ByVal TrnPOQUOHeader As TrnPOQUOHeader) As TrnPOQUOHeaderCollection
                Dim TrnPOQUOHeaderCollection As New TrnPOQUOHeaderCollection

                Try
                    Me.Execute(TrnPOQUOHeader, ESPName.SpTrnPOQUOHeaderDelete)
                    TrnPOQUOHeaderCollection = New TrnPOQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUOHeaderCollection
            End Function
        End Class
    End Namespace
End Namespace

