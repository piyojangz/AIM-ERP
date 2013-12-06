Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Transection
    Namespace ServiceContract
        Public Class TrnPRHeaderBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal TrnPRHeader As TrnPRHeader) As TrnPRHeaderCollection
                Dim TrnPRHeaderCollection As New TrnPRHeaderCollection

                Try
                    Me.Execute(TrnPRHeader, ESPName.SpTrnPRHeaderSelectAll)
                    TrnPRHeaderCollection = New TrnPRHeaderCollection(Me.MapDataToPropertyList(Of TrnPRHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRHeaderCollection
            End Function

            Public Function SelectData(ByVal TrnPRHeader As TrnPRHeader) As TrnPRHeaderCollection
                Dim TrnPRHeaderCollection As New TrnPRHeaderCollection

                Try
                    Me.Execute(TrnPRHeader, ESPName.SpTrnPRHeaderSelect)
                    TrnPRHeaderCollection = New TrnPRHeaderCollection(Me.MapDataToPropertyList(Of TrnPRHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRHeaderCollection
            End Function

            Public Function InsertData(ByVal TrnPRHeader As TrnPRHeader) As TrnPRHeaderCollection
                Dim TrnPRHeaderCollection As New TrnPRHeaderCollection

                Try
                    Me.Execute(TrnPRHeader, ESPName.SpTrnPRHeaderInsert)
                    TrnPRHeaderCollection = New TrnPRHeaderCollection(Me.MapDataToPropertyList(Of TrnPRHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRHeaderCollection
            End Function

            Public Function UpdateData(ByVal TrnPRHeader As TrnPRHeader) As TrnPRHeaderCollection
                Dim TrnPRHeaderCollection As New TrnPRHeaderCollection

                Try
                    Me.Execute(TrnPRHeader, ESPName.SpTrnPRHeaderUpdate)
                    TrnPRHeaderCollection = New TrnPRHeaderCollection(Me.MapDataToPropertyList(Of TrnPRHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRHeaderCollection
            End Function


            Public Function DeleteData(ByVal TrnPRHeader As TrnPRHeader) As TrnPRHeaderCollection
                Dim TrnPRHeaderCollection As New TrnPRHeaderCollection

                Try
                    Me.Execute(TrnPRHeader, ESPName.SpTrnPRHeaderDelete)
                    TrnPRHeaderCollection = New TrnPRHeaderCollection(Me.MapDataToPropertyList(Of TrnPRHeader))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return TrnPRHeaderCollection
            End Function
        End Class
    End Namespace
End Namespace

