Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace PO
    Namespace ServiceContract
        Public Class TrnPODetailBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnPODetail As TrnPODetail) As TrnPODetailCollection
                Dim TrnPODetailCollection As New TrnPODetailCollection

                Try
                    Me.Execute(TrnPODetail, ESPName.SpTrnPODetailSelectAll)
                    TrnPODetailCollection = New TrnPODetailCollection(Me.MapDataToPropertyList(Of TrnPODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPODetailCollection
            End Function

            Public Function SelectData(ByVal TrnPODetail As TrnPODetail) As TrnPODetailCollection
                Dim TrnPODetailCollection As New TrnPODetailCollection

                Try
                    Me.Execute(TrnPODetail, ESPName.SpTrnPODetailSelect)
                    TrnPODetailCollection = New TrnPODetailCollection(Me.MapDataToPropertyList(Of TrnPODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPODetailCollection
            End Function

            Public Function InsertData(ByVal TrnPODetail As TrnPODetail) As TrnPODetailCollection
                Dim TrnPODetailCollection As New TrnPODetailCollection

                Try
                    Me.Execute(TrnPODetail, ESPName.SpTrnPODetailInsert)
                    TrnPODetailCollection = New TrnPODetailCollection(Me.MapDataToPropertyList(Of TrnPODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPODetailCollection
            End Function

            Public Function UpdateData(ByVal TrnPODetail As TrnPODetail) As TrnPODetailCollection
                Dim TrnPODetailCollection As New TrnPODetailCollection

                Try
                    Me.Execute(TrnPODetail, ESPName.SpTrnPODetailUpdate)
                    TrnPODetailCollection = New TrnPODetailCollection(Me.MapDataToPropertyList(Of TrnPODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPODetailCollection
            End Function


            Public Function DeleteData(ByVal TrnPODetail As TrnPODetail) As TrnPODetailCollection
                Dim TrnPODetailCollection As New TrnPODetailCollection

                Try
                    Me.Execute(TrnPODetail, ESPName.SpTrnPODetailDelete)
                    TrnPODetailCollection = New TrnPODetailCollection(Me.MapDataToPropertyList(Of TrnPODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPODetailCollection
            End Function
        End Class
    End Namespace
End Namespace

