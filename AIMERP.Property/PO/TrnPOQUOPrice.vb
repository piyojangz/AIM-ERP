Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPOQUOPrice
                Inherits BaseProperty

                Public Property Org_ID As Integer
                Public Property Quotation_ID As Integer
                Public Property Line_ID As Integer
                Public Property QTY_From As Decimal
                Public Property QTY_To As Decimal
                Public Property Price As Decimal
                Public Property Start_Date As String
                Public Property End_Date As String
            End Class
        End Namespace
    End Namespace
End Namespace
