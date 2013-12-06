Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Transection
    Namespace ServiceContract
        Public Class TrnPRDetailBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnPRDetail As TrnPRDetail) As TrnPRDetailCollection
                Dim TrnPRDetailCollection As New TrnPRDetailCollection

                Try
                    Me.Execute(TrnPRDetail, ESPName.SpTrnPRDetailSelectAll)
                    TrnPRDetailCollection = New TrnPRDetailCollection(Me.MapDataToPropertyList(Of TrnPRDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRDetailCollection
            End Function

            Public Function SelectData(ByVal TrnPRDetail As TrnPRDetail) As TrnPRDetailCollection
                Dim TrnPRDetailCollection As New TrnPRDetailCollection

                Try
                    Me.Execute(TrnPRDetail, ESPName.SpTrnPRDetailSelect)
                    TrnPRDetailCollection = New TrnPRDetailCollection(Me.MapDataToPropertyList(Of TrnPRDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRDetailCollection
            End Function

            Public Function InsertData(ByVal TrnPRDetail As TrnPRDetail) As TrnPRDetailCollection
                Dim TrnPRDetailCollection As New TrnPRDetailCollection

                Try
                    Me.Execute(TrnPRDetail, ESPName.SpTrnPRDetailInsert)
                    TrnPRDetailCollection = New TrnPRDetailCollection(Me.MapDataToPropertyList(Of TrnPRDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRDetailCollection
            End Function

            Public Function UpdateData(ByVal TrnPRDetail As TrnPRDetail) As TrnPRDetailCollection
                Dim TrnPRDetailCollection As New TrnPRDetailCollection

                Try
                    Me.Execute(TrnPRDetail, ESPName.SpTrnPRDetailUpdate)
                    TrnPRDetailCollection = New TrnPRDetailCollection(Me.MapDataToPropertyList(Of TrnPRDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRDetailCollection
            End Function


            Public Function DeleteData(ByVal TrnPRDetail As TrnPRDetail) As TrnPRDetailCollection
                Dim TrnPRDetailCollection As New TrnPRDetailCollection

                Try
                    Me.Execute(TrnPRDetail, ESPName.SpTrnPRDetailDelete)
                    TrnPRDetailCollection = New TrnPRDetailCollection(Me.MapDataToPropertyList(Of TrnPRDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRDetailCollection
            End Function
        End Class
    End Namespace
End Namespace

