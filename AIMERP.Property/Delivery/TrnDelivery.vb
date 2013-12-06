Namespace Delivery
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnDelivery
                Inherits BaseProperty


                Public Property Org_ID           As Integer
                Public Property Billing_ID       As Integer
                Public Property Billing_No       As String
                Public Property Request_ID       As Integer
                Public Property Currency_Code    As String
                Public Property Customer_ID      As Integer
                Public Property Customer_Site_ID As Integer
                Public Property Bill_To_ID       As Integer
                Public Property Ship_To_ID       As Integer
                Public Property Schedule_Delivery_Date As String
                Public Property Total_Amount     As Integer
                Public Property Car_ID           As Integer
                Public Property Car_Reg_No       As String
                Public Property Driver_ID        As Integer
                Public Property Delivery_Status  As Integer

            End Class
        End Namespace
    End Namespace
End Namespace
