Imports AIMERP.Property.Sale.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Sale
    Namespace ServiceContract
        Public Class TrnSQUODetailBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnSQUODetail As TrnSQUODetail) As TrnSQUODetailCollection
                Dim TrnSQUODetailCollection As New TrnSQUODetailCollection

                Try
                    Me.Execute(TrnSQUODetail, ESPName.SpTrnSQUODetailSelectAll)
                    TrnSQUODetailCollection = New TrnSQUODetailCollection(Me.MapDataToPropertyList(Of TrnSQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUODetailCollection
            End Function

            Public Function SelectData(ByVal TrnSQUODetail As TrnSQUODetail) As TrnSQUODetailCollection
                Dim TrnSQUODetailCollection As New TrnSQUODetailCollection

                Try
                    Me.Execute(TrnSQUODetail, ESPName.SpTrnSQUODetailSelect)
                    TrnSQUODetailCollection = New TrnSQUODetailCollection(Me.MapDataToPropertyList(Of TrnSQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUODetailCollection
            End Function

            Public Function InsertData(ByVal TrnSQUODetail As TrnSQUODetail) As TrnSQUODetailCollection
                Dim TrnSQUODetailCollection As New TrnSQUODetailCollection

                Try
                    Me.Execute(TrnSQUODetail, ESPName.SpTrnSQUODetailInsert)
                    TrnSQUODetailCollection = New TrnSQUODetailCollection(Me.MapDataToPropertyList(Of TrnSQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUODetailCollection
            End Function

            Public Function UpdateData(ByVal TrnSQUODetail As TrnSQUODetail) As TrnSQUODetailCollection
                Dim TrnSQUODetailCollection As New TrnSQUODetailCollection

                Try
                    Me.Execute(TrnSQUODetail, ESPName.SpTrnSQUODetailUpdate)
                    TrnSQUODetailCollection = New TrnSQUODetailCollection(Me.MapDataToPropertyList(Of TrnSQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUODetailCollection
            End Function


            Public Function DeleteData(ByVal TrnSQUODetail As TrnSQUODetail) As TrnSQUODetailCollection
                Dim TrnSQUODetailCollection As New TrnSQUODetailCollection

                Try
                    Me.Execute(TrnSQUODetail, ESPName.SpTrnSQUODetailDelete)
                    TrnSQUODetailCollection = New TrnSQUODetailCollection(Me.MapDataToPropertyList(Of TrnSQUODetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnSQUODetailCollection
            End Function
        End Class
    End Namespace
End Namespace

