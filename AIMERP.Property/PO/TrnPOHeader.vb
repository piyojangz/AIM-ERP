Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPOHeader
                Inherits BaseProperty
                Public Property Org_ID As Integer
                Public Property Purchase_Order_ID As Integer
                Public Property Purchase_Order_No As String
                Public Property Purchase_Type As String
                Public Property Supplier_ID As Integer
                Public Property Supplier_Site_ID As Integer
                Public Property Currency_Code As String
                Public Property Remark As String
                Public Property Ship_To_ID As Integer
                Public Property Bill_To_ID As Integer
                Public Property Purchase_Amount As Decimal
                Public Property Vat_ID As Integer
                Public Property Vat_Amount As Decimal
                Public Property Total_Amount As Decimal
                Public Property Payment_Term_ID As Integer
                Public Property Description As String
                Public Property Contact_Person As String

            End Class
        End Namespace
    End Namespace
End Namespace

