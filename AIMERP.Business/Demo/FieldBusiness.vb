Imports AIMERP.Property.Demo.ServiceContract.DataContract
Imports AIMERP.DataAccess

Namespace Demo
    Namespace ServiceContract
        Public Class FieldBusiness
            Inherits BaseBusiness

            Public Function SelectAllData(ByVal Field As Field) As FieldCollection
                Dim FieldCollection As New FieldCollection

                Try
                    Me.Execute(Field, ESPName.SpFieldSelectAll)
                    FieldCollection = New FieldCollection(Me.MapDataToPropertyList(Of Field))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return FieldCollection
            End Function

            Public Function SelectData(ByVal Field As Field) As FieldCollection
                Dim FieldCollection As New FieldCollection

                Try
                    Me.Execute(Field, ESPName.SpFieldSelect)
                    FieldCollection = New FieldCollection(Me.MapDataToPropertyList(Of Field))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return FieldCollection
            End Function

            Public Function InsertData(ByVal Field As Field) As FieldCollection
                Dim FieldCollection As New FieldCollection

                Try
                    Me.Execute(Field, ESPName.SpFieldInsert)
                    FieldCollection = New FieldCollection(Me.MapDataToPropertyList(Of Field))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return FieldCollection
            End Function

            Public Function UpdateData(ByVal Field As Field) As FieldCollection
                Dim FieldCollection As New FieldCollection

                Try
                    Me.Execute(Field, ESPName.SpFieldUpdate)
                    FieldCollection = New FieldCollection(Me.MapDataToPropertyList(Of Field))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return FieldCollection
            End Function


            Public Function DeleteData(ByVal Field As Field) As FieldCollection
                Dim FieldCollection As New FieldCollection

                Try
                    Me.Execute(Field, ESPName.SpFieldDelete)
                    FieldCollection = New FieldCollection(Me.MapDataToPropertyList(Of Field))
                Catch ex As Exception

                Finally
                    Me.DisposeObject(ds)
                    Me.DisposeObject(Me.DataAccess)
                End Try

                Return FieldCollection
            End Function
        End Class
    End Namespace
End Namespace

