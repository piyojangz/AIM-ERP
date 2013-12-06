Imports AIMERP.Property.Sale.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Transection
    Namespace ServiceContract
        Public Class TrnSaleDetailBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnSaleDetail As TrnSaleDetail) As TrnSaleDetailCollection
                Dim TrnSaleDetailCollection As New TrnSaleDetailCollection

                Try
                    Me.Execute(TrnSaleDetail, ESPName.SpTrnSaleDetailSelectAll)
                    TrnSaleDetailCollection = New TrnSaleDetailCollection(Me.MapDataToPropertyList(Of TrnSaleDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleDetailCollection
            End Function

            Public Function SelectData(ByVal TrnSaleDetail As TrnSaleDetail) As TrnSaleDetailCollection
                Dim TrnSaleDetailCollection As New TrnSaleDetailCollection

                Try
                    Me.Execute(TrnSaleDetail, ESPName.SpTrnSaleDetailSelect)
                    TrnSaleDetailCollection = New TrnSaleDetailCollection(Me.MapDataToPropertyList(Of TrnSaleDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleDetailCollection
            End Function

            Public Function InsertData(ByVal TrnSaleDetail As TrnSaleDetail) As TrnSaleDetailCollection
                Dim TrnSaleDetailCollection As New TrnSaleDetailCollection

                Try
                    Me.Execute(TrnSaleDetail, ESPName.SpTrnSaleDetailInsert)
                    TrnSaleDetailCollection = New TrnSaleDetailCollection(Me.MapDataToPropertyList(Of TrnSaleDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleDetailCollection
            End Function

            Public Function UpdateData(ByVal TrnSaleDetail As TrnSaleDetail) As TrnSaleDetailCollection
                Dim TrnSaleDetailCollection As New TrnSaleDetailCollection

                Try
                    Me.Execute(TrnSaleDetail, ESPName.SpTrnSaleDetailUpdate)
                    TrnSaleDetailCollection = New TrnSaleDetailCollection(Me.MapDataToPropertyList(Of TrnSaleDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleDetailCollection
            End Function


            Public Function DeleteData(ByVal TrnSaleDetail As TrnSaleDetail) As TrnSaleDetailCollection
                Dim TrnSaleDetailCollection As New TrnSaleDetailCollection

                Try
                    Me.Execute(TrnSaleDetail, ESPName.SpTrnSaleDetailDelete)
                    TrnSaleDetailCollection = New TrnSaleDetailCollection(Me.MapDataToPropertyList(Of TrnSaleDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSaleDetailCollection
            End Function
        End Class
    End Namespace
End Namespace

