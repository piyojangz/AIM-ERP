Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.DataAccess

'Namespace Sale
Namespace PO
    Namespace ServiceContract
        Public Class TrnPOQUODetailBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnPOQUODetail As TrnPOQUODetail) As TrnPOQUODetailCollection
                Dim TrnPOQUODetailCollection As New TrnPOQUODetailCollection

                Try
                    Me.Execute(TrnPOQUODetail, ESPName.SpTrnPOQUODetailSelectAll)
                    TrnPOQUODetailCollection = New TrnPOQUODetailCollection(Me.MapDataToPropertyList(Of TrnPOQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUODetailCollection
            End Function

            Public Function SelectData(ByVal TrnPOQUODetail As TrnPOQUODetail) As TrnPOQUODetailCollection
                Dim TrnPOQUODetailCollection As New TrnPOQUODetailCollection

                Try
                    Me.Execute(TrnPOQUODetail, ESPName.SpTrnPOQUODetailSelect)
                    TrnPOQUODetailCollection = New TrnPOQUODetailCollection(Me.MapDataToPropertyList(Of TrnPOQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUODetailCollection
            End Function

            Public Function InsertData(ByVal TrnPOQUODetail As TrnPOQUODetail) As TrnPOQUODetailCollection
                Dim TrnPOQUODetailCollection As New TrnPOQUODetailCollection

                Try
                    Me.Execute(TrnPOQUODetail, ESPName.SpTrnPOQUODetailInsert)
                    TrnPOQUODetailCollection = New TrnPOQUODetailCollection(Me.MapDataToPropertyList(Of TrnPOQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUODetailCollection
            End Function

            Public Function UpdateData(ByVal TrnPOQUODetail As TrnPOQUODetail) As TrnPOQUODetailCollection
                Dim TrnPOQUODetailCollection As New TrnPOQUODetailCollection

                Try
                    Me.Execute(TrnPOQUODetail, ESPName.SpTrnPOQUODetailUpdate)
                    TrnPOQUODetailCollection = New TrnPOQUODetailCollection(Me.MapDataToPropertyList(Of TrnPOQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUODetailCollection
            End Function


            Public Function DeleteData(ByVal TrnPOQUODetail As TrnPOQUODetail) As TrnPOQUODetailCollection
                Dim TrnPOQUODetailCollection As New TrnPOQUODetailCollection

                Try
                    Me.Execute(TrnPOQUODetail, ESPName.SpTrnPOQUODetailDelete)
                    TrnPOQUODetailCollection = New TrnPOQUODetailCollection(Me.MapDataToPropertyList(Of TrnPOQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPOQUODetailCollection
            End Function
        End Class
    End Namespace
End Namespace

