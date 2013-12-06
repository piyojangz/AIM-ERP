Imports AIMERP.Property.Sale.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Sale
    Namespace ServiceContract
        Public Class TrnSQUOHeaderBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnSQUOHeader As TrnSQUOHeader) As TrnSQUOHeaderCollection
                Dim TrnSQUOHeaderCollection As New TrnSQUOHeaderCollection

                Try
                    Me.Execute(TrnSQUOHeader, ESPName.SpTrnSQUOHeaderSelectAll)
                    TrnSQUOHeaderCollection = New TrnSQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnSQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUOHeaderCollection
            End Function

            Public Function SelectData(ByVal TrnSQUOHeader As TrnSQUOHeader) As TrnSQUOHeaderCollection
                Dim TrnSQUOHeaderCollection As New TrnSQUOHeaderCollection

                Try
                    Me.Execute(TrnSQUOHeader, ESPName.SpTrnSQUOHeaderSelect)
                    TrnSQUOHeaderCollection = New TrnSQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnSQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUOHeaderCollection
            End Function

            Public Function InsertData(ByVal TrnSQUOHeader As TrnSQUOHeader) As TrnSQUOHeaderCollection
                Dim TrnSQUOHeaderCollection As New TrnSQUOHeaderCollection

                Try
                    Me.Execute(TrnSQUOHeader, ESPName.SpTrnSQUOHeaderInsert)
                    TrnSQUOHeaderCollection = New TrnSQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnSQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUOHeaderCollection
            End Function

            Public Function UpdateData(ByVal TrnSQUOHeader As TrnSQUOHeader) As TrnSQUOHeaderCollection
                Dim TrnSQUOHeaderCollection As New TrnSQUOHeaderCollection

                Try
                    Me.Execute(TrnSQUOHeader, ESPName.SpTrnSQUOHeaderUpdate)
                    TrnSQUOHeaderCollection = New TrnSQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnSQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUOHeaderCollection
            End Function


            Public Function DeleteData(ByVal TrnSQUOHeader As TrnSQUOHeader) As TrnSQUOHeaderCollection
                Dim TrnSQUOHeaderCollection As New TrnSQUOHeaderCollection

                Try
                    Me.Execute(TrnSQUOHeader, ESPName.SpTrnSQUOHeaderDelete)
                    TrnSQUOHeaderCollection = New TrnSQUOHeaderCollection(Me.MapDataToPropertyList(Of TrnSQUOHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUOHeaderCollection
            End Function
        End Class
    End Namespace
End Namespace

