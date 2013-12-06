Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Sale
    Namespace ServiceContract
        Public Class TrnPQUOHeaderBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnPQUOHeader As TrnPQUOHeader) As TrnPQUOHeaderCollection
                Dim TrnPQUOHeaderCollection As New TrnPQUOHeaderCollection

                Try
                    Me.Execute(TrnPQUOHeader, ESPName.SpTrnPQUOHeaderSelectAll)
                    TrnPQUOHeaderCollection = New TrnPQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUOHeaderCollection
            End Function

            Public Function SelectData(ByVal TrnPQUOHeader As TrnPQUOHeader) As TrnPQUOHeaderCollection
                Dim TrnPQUOHeaderCollection As New TrnPQUOHeaderCollection

                Try
                    Me.Execute(TrnPQUOHeader, ESPName.SpTrnPQUOHeaderSelect)
                    TrnPQUOHeaderCollection = New TrnPQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUOHeaderCollection
            End Function

            Public Function InsertData(ByVal TrnPQUOHeader As TrnPQUOHeader) As TrnPQUOHeaderCollection
                Dim TrnPQUOHeaderCollection As New TrnPQUOHeaderCollection

                Try
                    Me.Execute(TrnPQUOHeader, ESPName.SpTrnPQUOHeaderInsert)
                    TrnPQUOHeaderCollection = New TrnPQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUOHeaderCollection
            End Function

            Public Function UpdateData(ByVal TrnPQUOHeader As TrnPQUOHeader) As TrnPQUOHeaderCollection
                Dim TrnPQUOHeaderCollection As New TrnPQUOHeaderCollection

                Try
                    Me.Execute(TrnPQUOHeader, ESPName.SpTrnPQUOHeaderUpdate)
                    TrnPQUOHeaderCollection = New TrnPQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUOHeaderCollection
            End Function


            Public Function DeleteData(ByVal TrnPQUOHeader As TrnPQUOHeader) As TrnPQUOHeaderCollection
                Dim TrnPQUOHeaderCollection As New TrnPQUOHeaderCollection

                Try
                    Me.Execute(TrnPQUOHeader, ESPName.SpTrnPQUOHeaderDelete)
                    TrnPQUOHeaderCollection = New TrnPQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnPQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUOHeaderCollection
            End Function
        End Class
    End Namespace
End Namespace

