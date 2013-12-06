Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Sale
    Namespace ServiceContract
        Public Class TrnPQUODetailBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnPQUODetail As TrnPQUODetail) As TrnPQUODetailCollection
                Dim TrnPQUODetailCollection As New TrnPQUODetailCollection

                Try
                    Me.Execute(TrnPQUODetail, ESPName.SpTrnPQUODetailSelectAll)
                    TrnPQUODetailCollection = New TrnPQUODetailCollection(Me.MapDataToPropertyList(Of TrnPQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUODetailCollection
            End Function

            Public Function SelectData(ByVal TrnPQUODetail As TrnPQUODetail) As TrnPQUODetailCollection
                Dim TrnPQUODetailCollection As New TrnPQUODetailCollection

                Try
                    Me.Execute(TrnPQUODetail, ESPName.SpTrnPQUODetailSelect)
                    TrnPQUODetailCollection = New TrnPQUODetailCollection(Me.MapDataToPropertyList(Of TrnPQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUODetailCollection
            End Function

            Public Function InsertData(ByVal TrnPQUODetail As TrnPQUODetail) As TrnPQUODetailCollection
                Dim TrnPQUODetailCollection As New TrnPQUODetailCollection

                Try
                    Me.Execute(TrnPQUODetail, ESPName.SpTrnPQUODetailInsert)
                    TrnPQUODetailCollection = New TrnPQUODetailCollection(Me.MapDataToPropertyList(Of TrnPQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUODetailCollection
            End Function

            Public Function UpdateData(ByVal TrnPQUODetail As TrnPQUODetail) As TrnPQUODetailCollection
                Dim TrnPQUODetailCollection As New TrnPQUODetailCollection

                Try
                    Me.Execute(TrnPQUODetail, ESPName.SpTrnPQUODetailUpdate)
                    TrnPQUODetailCollection = New TrnPQUODetailCollection(Me.MapDataToPropertyList(Of TrnPQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUODetailCollection
            End Function


            Public Function DeleteData(ByVal TrnPQUODetail As TrnPQUODetail) As TrnPQUODetailCollection
                Dim TrnPQUODetailCollection As New TrnPQUODetailCollection

                Try
                    Me.Execute(TrnPQUODetail, ESPName.SpTrnPQUODetailDelete)
                    TrnPQUODetailCollection = New TrnPQUODetailCollection(Me.MapDataToPropertyList(Of TrnPQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPQUODetailCollection
            End Function
        End Class
    End Namespace
End Namespace

