Imports AIMERP.Property.Delivery.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Transection
    Namespace ServiceContract
        Public Class TrnRequestHeaderBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnRequestHeader As TrnRequestHeader) As TrnRequestHeaderCollection
                Dim TrnRequestHeaderCollection As New TrnRequestHeaderCollection

                Try
                    Me.Execute(TrnRequestHeader, ESPName.SpTrnRequestHeaderSelectAll)
                    TrnRequestHeaderCollection = New TrnRequestHeaderCollection(Me.MapDataToPropertyList(Of TrnRequestHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestHeaderCollection
            End Function

            Public Function SelectData(ByVal TrnRequestHeader As TrnRequestHeader) As TrnRequestHeaderCollection
                Dim TrnRequestHeaderCollection As New TrnRequestHeaderCollection

                Try
                    Me.Execute(TrnRequestHeader, ESPName.SpTrnRequestHeaderSelect)
                    TrnRequestHeaderCollection = New TrnRequestHeaderCollection(Me.MapDataToPropertyList(Of TrnRequestHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestHeaderCollection
            End Function

            Public Function InsertData(ByVal TrnRequestHeader As TrnRequestHeader) As TrnRequestHeaderCollection
                Dim TrnRequestHeaderCollection As New TrnRequestHeaderCollection

                Try
                    Me.Execute(TrnRequestHeader, ESPName.SpTrnRequestHeaderInsert)
                    TrnRequestHeaderCollection = New TrnRequestHeaderCollection(Me.MapDataToPropertyList(Of TrnRequestHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestHeaderCollection
            End Function

            Public Function UpdateData(ByVal TrnRequestHeader As TrnRequestHeader) As TrnRequestHeaderCollection
                Dim TrnRequestHeaderCollection As New TrnRequestHeaderCollection

                Try
                    Me.Execute(TrnRequestHeader, ESPName.SpTrnRequestHeaderUpdate)
                    TrnRequestHeaderCollection = New TrnRequestHeaderCollection(Me.MapDataToPropertyList(Of TrnRequestHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestHeaderCollection
            End Function


            Public Function DeleteData(ByVal TrnRequestHeader As TrnRequestHeader) As TrnRequestHeaderCollection
                Dim TrnRequestHeaderCollection As New TrnRequestHeaderCollection

                Try
                    Me.Execute(TrnRequestHeader, ESPName.SpTrnRequestHeaderDelete)
                    TrnRequestHeaderCollection = New TrnRequestHeaderCollection(Me.MapDataToPropertyList(Of TrnRequestHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnRequestHeaderCollection
            End Function
        End Class
    End Namespace
End Namespace

