Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Transection
    Namespace ServiceContract
        Public Class TrnPOHeaderBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnPOHeader As TrnPOHeader) As TrnPOHeaderCollection
                Dim TrnPOHeaderCollection As New TrnPOHeaderCollection

                Try
                    Me.Execute(TrnPOHeader, ESPName.SpTrnPOHeaderSelectAll)
                    TrnPOHeaderCollection = New TrnPOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOHeaderCollection
            End Function

            Public Function SelectData(ByVal TrnPOHeader As TrnPOHeader) As TrnPOHeaderCollection
                Dim TrnPOHeaderCollection As New TrnPOHeaderCollection

                Try
                    Me.Execute(TrnPOHeader, ESPName.SpTrnPOHeaderSelect)
                    TrnPOHeaderCollection = New TrnPOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOHeaderCollection
            End Function

            Public Function InsertData(ByVal TrnPOHeader As TrnPOHeader) As TrnPOHeaderCollection
                Dim TrnPOHeaderCollection As New TrnPOHeaderCollection

                Try
                    Me.Execute(TrnPOHeader, ESPName.SpTrnPOHeaderInsert)
                    TrnPOHeaderCollection = New TrnPOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOHeaderCollection
            End Function

            Public Function UpdateData(ByVal TrnPOHeader As TrnPOHeader) As TrnPOHeaderCollection
                Dim TrnPOHeaderCollection As New TrnPOHeaderCollection

                Try
                    Me.Execute(TrnPOHeader, ESPName.SpTrnPOHeaderUpdate)
                    TrnPOHeaderCollection = New TrnPOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOHeaderCollection
            End Function


            Public Function DeleteData(ByVal TrnPOHeader As TrnPOHeader) As TrnPOHeaderCollection
                Dim TrnPOHeaderCollection As New TrnPOHeaderCollection

                Try
                    Me.Execute(TrnPOHeader, ESPName.SpTrnPOHeaderDelete)
                    TrnPOHeaderCollection = New TrnPOHeaderCollection(Me.MapDataToPropertyList(Of TrnPOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOHeaderCollection
            End Function
        End Class
    End Namespace
End Namespace

