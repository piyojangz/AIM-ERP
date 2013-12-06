Imports AIMERP.Property.Delivery.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Transection
    Namespace ServiceContract
        Public Class TrnRequestDetailBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnRequestDetail As TrnRequestDetail) As TrnRequestDetailCollection
                Dim TrnRequestDetailCollection As New TrnRequestDetailCollection

                Try
                    Me.Execute(TrnRequestDetail, ESPName.SpTrnRequestDetailSelectAll)
                    TrnRequestDetailCollection = New TrnRequestDetailCollection(Me.MapDataToPropertyList(Of TrnRequestDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestDetailCollection
            End Function

            Public Function SelectData(ByVal TrnRequestDetail As TrnRequestDetail) As TrnRequestDetailCollection
                Dim TrnRequestDetailCollection As New TrnRequestDetailCollection

                Try
                    Me.Execute(TrnRequestDetail, ESPName.SpTrnRequestDetailSelect)
                    TrnRequestDetailCollection = New TrnRequestDetailCollection(Me.MapDataToPropertyList(Of TrnRequestDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestDetailCollection
            End Function

            Public Function InsertData(ByVal TrnRequestDetail As TrnRequestDetail) As TrnRequestDetailCollection
                Dim TrnRequestDetailCollection As New TrnRequestDetailCollection

                Try
                    Me.Execute(TrnRequestDetail, ESPName.SpTrnRequestDetailInsert)
                    TrnRequestDetailCollection = New TrnRequestDetailCollection(Me.MapDataToPropertyList(Of TrnRequestDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestDetailCollection
            End Function

            Public Function UpdateData(ByVal TrnRequestDetail As TrnRequestDetail) As TrnRequestDetailCollection
                Dim TrnRequestDetailCollection As New TrnRequestDetailCollection

                Try
                    Me.Execute(TrnRequestDetail, ESPName.SpTrnRequestDetailUpdate)
                    TrnRequestDetailCollection = New TrnRequestDetailCollection(Me.MapDataToPropertyList(Of TrnRequestDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestDetailCollection
            End Function


            Public Function DeleteData(ByVal TrnRequestDetail As TrnRequestDetail) As TrnRequestDetailCollection
                Dim TrnRequestDetailCollection As New TrnRequestDetailCollection

                Try
                    Me.Execute(TrnRequestDetail, ESPName.SpTrnRequestDetailDelete)
                    TrnRequestDetailCollection = New TrnRequestDetailCollection(Me.MapDataToPropertyList(Of TrnRequestDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestDetailCollection
            End Function
        End Class
    End Namespace
End Namespace

