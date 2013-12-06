Namespace Sale
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnSaleHeader
                Inherits BaseProperty

                Public Property Org_ID As Integer
                Public Property Sales_Order_ID As Integer
                Public Property Sales_Order_Number As String
                Public Property Quotation_ID As String
                Public Property Sales_Order_Date As Integer
                Public Property Currency_Code As String
                Public Property Sales_Order_Status As String
                Public Property Customer_ID As Integer
                Public Property Customer_Site_ID As Integer
                Public Property Bill_To_ID As Integer
                Public Property Ship_To_ID As Integer
                Public Property Term_ID As Integer
                Public Property TAX_ID As Integer
                Public Property Description As String
                Public Property Emp_ID As Integer
                Public Property Remark As String

            End Class
        End Namespace
    End Namespace
End Namespace
