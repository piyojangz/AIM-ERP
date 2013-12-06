Imports AIMERP.Property.Delivery.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Delivery
    Namespace ServiceContract
        Public Class TrnDeliveryBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnDelivery As TrnDelivery) As TrnDeliveryCollection
                Dim TrnDeliveryCollection As New TrnDeliveryCollection

                Try
                    Me.Execute(TrnDelivery, ESPName.SpTrnDeliverySelectAll)
                    TrnDeliveryCollection = New TrnDeliveryCollection(Me.MapDataToPropertyList(Of TrnDelivery))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnDeliveryCollection
            End Function

            Public Function SelectData(ByVal TrnDelivery As TrnDelivery) As TrnDeliveryCollection
                Dim TrnDeliveryCollection As New TrnDeliveryCollection

                Try
                    Me.Execute(TrnDelivery, ESPName.SpTrnDeliverySelect)
                    TrnDeliveryCollection = New TrnDeliveryCollection(Me.MapDataToPropertyList(Of TrnDelivery))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnDeliveryCollection
            End Function

            Public Function InsertData(ByVal TrnDelivery As TrnDelivery) As TrnDeliveryCollection
                Dim TrnDeliveryCollection As New TrnDeliveryCollection

                Try
                    Me.Execute(TrnDelivery, ESPName.SpTrnDeliveryInsert)
                    TrnDeliveryCollection = New TrnDeliveryCollection(Me.MapDataToPropertyList(Of TrnDelivery))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnDeliveryCollection
            End Function

            Public Function UpdateData(ByVal TrnDelivery As TrnDelivery) As TrnDeliveryCollection
                Dim TrnDeliveryCollection As New TrnDeliveryCollection

                Try
                    Me.Execute(TrnDelivery, ESPName.SpTrnDeliveryUpdate)
                    TrnDeliveryCollection = New TrnDeliveryCollection(Me.MapDataToPropertyList(Of TrnDelivery))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnDeliveryCollection
            End Function


            Public Function DeleteData(ByVal TrnDelivery As TrnDelivery) As TrnDeliveryCollection
                Dim TrnDeliveryCollection As New TrnDeliveryCollection

                Try
                    Me.Execute(TrnDelivery, ESPName.SpTrnDeliveryDelete)
                    TrnDeliveryCollection = New TrnDeliveryCollection(Me.MapDataToPropertyList(Of TrnDelivery))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnDeliveryCollection
            End Function
        End Class
    End Namespace
End Namespace

