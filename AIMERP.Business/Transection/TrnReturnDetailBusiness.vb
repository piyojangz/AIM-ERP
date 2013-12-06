Imports AIMERP.Property.Sale.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Sale
    Namespace ServiceContract
        Public Class TrnReturnDetailBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnReturnDetail As TrnReturnDetail) As TrnReturnDetailCollection
                Dim TrnReturnDetailCollection As New TrnReturnDetailCollection

                Try
                    Me.Execute(TrnReturnDetail, ESPName.SpTrnReturnDetailSelectAll)
                    TrnReturnDetailCollection = New TrnReturnDetailCollection(Me.MapDataToPropertyList(Of TrnReturnDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnDetailCollection
            End Function

            Public Function SelectData(ByVal TrnReturnDetail As TrnReturnDetail) As TrnReturnDetailCollection
                Dim TrnReturnDetailCollection As New TrnReturnDetailCollection

                Try
                    Me.Execute(TrnReturnDetail, ESPName.SpTrnReturnDetailSelect)
                    TrnReturnDetailCollection = New TrnReturnDetailCollection(Me.MapDataToPropertyList(Of TrnReturnDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnDetailCollection
            End Function

            Public Function InsertData(ByVal TrnReturnDetail As TrnReturnDetail) As TrnReturnDetailCollection
                Dim TrnReturnDetailCollection As New TrnReturnDetailCollection

                Try
                    Me.Execute(TrnReturnDetail, ESPName.SpTrnReturnDetailInsert)
                    TrnReturnDetailCollection = New TrnReturnDetailCollection(Me.MapDataToPropertyList(Of TrnReturnDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnDetailCollection
            End Function

            Public Function UpdateData(ByVal TrnReturnDetail As TrnReturnDetail) As TrnReturnDetailCollection
                Dim TrnReturnDetailCollection As New TrnReturnDetailCollection

                Try
                    Me.Execute(TrnReturnDetail, ESPName.SpTrnReturnDetailUpdate)
                    TrnReturnDetailCollection = New TrnReturnDetailCollection(Me.MapDataToPropertyList(Of TrnReturnDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnDetailCollection
            End Function


            Public Function DeleteData(ByVal TrnReturnDetail As TrnReturnDetail) As TrnReturnDetailCollection
                Dim TrnReturnDetailCollection As New TrnReturnDetailCollection

                Try
                    Me.Execute(TrnReturnDetail, ESPName.SpTrnReturnDetailDelete)
                    TrnReturnDetailCollection = New TrnReturnDetailCollection(Me.MapDataToPropertyList(Of TrnReturnDetail))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnDetailCollection
            End Function
        End Class
    End Namespace
End Namespace

