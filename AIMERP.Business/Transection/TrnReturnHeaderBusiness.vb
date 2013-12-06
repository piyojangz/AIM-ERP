Imports AIMERP.Property.Sale.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Sale
    Namespace ServiceContract
        Public Class TrnReturnHeaderBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnReturnHeader As TrnReturnHeader) As TrnReturnHeaderCollection
                Dim TrnReturnHeaderCollection As New TrnReturnHeaderCollection

                Try
                    Me.Execute(TrnReturnHeader, ESPName.SpTrnReturnHeaderSelectAll)
                    TrnReturnHeaderCollection = New TrnReturnHeaderCollection(Me.MapDataToPropertyList(Of TrnReturnHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnHeaderCollection
            End Function

            Public Function SelectData(ByVal TrnReturnHeader As TrnReturnHeader) As TrnReturnHeaderCollection
                Dim TrnReturnHeaderCollection As New TrnReturnHeaderCollection

                Try
                    Me.Execute(TrnReturnHeader, ESPName.SpTrnReturnHeaderSelect)
                    TrnReturnHeaderCollection = New TrnReturnHeaderCollection(Me.MapDataToPropertyList(Of TrnReturnHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnHeaderCollection
            End Function

            Public Function InsertData(ByVal TrnReturnHeader As TrnReturnHeader) As TrnReturnHeaderCollection
                Dim TrnReturnHeaderCollection As New TrnReturnHeaderCollection

                Try
                    Me.Execute(TrnReturnHeader, ESPName.SpTrnReturnHeaderInsert)
                    TrnReturnHeaderCollection = New TrnReturnHeaderCollection(Me.MapDataToPropertyList(Of TrnReturnHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnHeaderCollection
            End Function

            Public Function UpdateData(ByVal TrnReturnHeader As TrnReturnHeader) As TrnReturnHeaderCollection
                Dim TrnReturnHeaderCollection As New TrnReturnHeaderCollection

                Try
                    Me.Execute(TrnReturnHeader, ESPName.SpTrnReturnHeaderUpdate)
                    TrnReturnHeaderCollection = New TrnReturnHeaderCollection(Me.MapDataToPropertyList(Of TrnReturnHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnHeaderCollection
            End Function


            Public Function DeleteData(ByVal TrnReturnHeader As TrnReturnHeader) As TrnReturnHeaderCollection
                Dim TrnReturnHeaderCollection As New TrnReturnHeaderCollection

                Try
                    Me.Execute(TrnReturnHeader, ESPName.SpTrnReturnHeaderDelete)
                    TrnReturnHeaderCollection = New TrnReturnHeaderCollection(Me.MapDataToPropertyList(Of TrnReturnHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnReturnHeaderCollection
            End Function
        End Class
    End Namespace
End Namespace

