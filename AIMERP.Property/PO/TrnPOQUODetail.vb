Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPOQUODetail
                Inherits BaseProperty

                Public Property Line_ID As Integer
                Public Property Quotation_ID As Integer
                Public Property Quotation_Type As String
                'Public Property Quotation_Type_Name As String
                Public Property Item_ID As String
                'Public Property Item_Name As String
                Public Property Description As Decimal
                Public Property UOM_Code As String
                'Public Property UOM_Name As String
            End Class
        End Namespace
    End Namespace
End Namespace

