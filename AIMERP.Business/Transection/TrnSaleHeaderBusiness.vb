Imports AIMERP.Property.Sale.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Sale
    Namespace ServiceContract
        Public Class TrnSaleHeaderBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnSaleHeader As TrnSaleHeader) As TrnSaleHeaderCollection
                Dim TrnSaleHeaderCollection As New TrnSaleHeaderCollection

                Try
                    Me.Execute(TrnSaleHeader, ESPName.SpTrnSaleHeaderSelectAll)
                    TrnSaleHeaderCollection = New TrnSaleHeaderCollection(Me.MapDataToPropertyList(Of TrnSaleHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleHeaderCollection
            End Function

            Public Function SelectData(ByVal TrnSaleHeader As TrnSaleHeader) As TrnSaleHeaderCollection
                Dim TrnSaleHeaderCollection As New TrnSaleHeaderCollection

                Try
                    Me.Execute(TrnSaleHeader, ESPName.SpTrnSaleHeaderSelect)
                    TrnSaleHeaderCollection = New TrnSaleHeaderCollection(Me.MapDataToPropertyList(Of TrnSaleHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleHeaderCollection
            End Function

            Public Function InsertData(ByVal TrnSaleHeader As TrnSaleHeader) As TrnSaleHeaderCollection
                Dim TrnSaleHeaderCollection As New TrnSaleHeaderCollection

                Try
                    Me.Execute(TrnSaleHeader, ESPName.SpTrnSaleHeaderInsert)
                    TrnSaleHeaderCollection = New TrnSaleHeaderCollection(Me.MapDataToPropertyList(Of TrnSaleHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleHeaderCollection
            End Function

            Public Function UpdateData(ByVal TrnSaleHeader As TrnSaleHeader) As TrnSaleHeaderCollection
                Dim TrnSaleHeaderCollection As New TrnSaleHeaderCollection

                Try
                    Me.Execute(TrnSaleHeader, ESPName.SpTrnSaleHeaderUpdate)
                    TrnSaleHeaderCollection = New TrnSaleHeaderCollection(Me.MapDataToPropertyList(Of TrnSaleHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleHeaderCollection
            End Function


            Public Function DeleteData(ByVal TrnSaleHeader As TrnSaleHeader) As TrnSaleHeaderCollection
                Dim TrnSaleHeaderCollection As New TrnSaleHeaderCollection

                Try
                    Me.Execute(TrnSaleHeader, ESPName.SpTrnSaleHeaderDelete)
                    TrnSaleHeaderCollection = New TrnSaleHeaderCollection(Me.MapDataToPropertyList(Of TrnSaleHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleHeaderCollection
            End Function
        End Class
    End Namespace
End Namespace

