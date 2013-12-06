Namespace Delivery
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnRequestHeader
                Inherits BaseProperty

                Public Property Org_ID As Integer
                Public Property Request_ID As Integer
                Public Property Sales_Order_Number As String
                Public Property Currency_Code As String
                Public Property Sales_Order_Status As String
                Public Property Customer_ID As Integer
                Public Property Customer_Site_ID As Integer
                Public Property Bill_To_ID As Integer
                Public Property Ship_To_ID As Integer



            End Class
        End Namespace
    End Namespace
End Namespace
