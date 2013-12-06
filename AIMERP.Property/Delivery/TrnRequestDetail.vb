Namespace Delivery
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnRequestDetail
                Inherits BaseProperty
                Public Property Org_ID As Integer
                Public Property Sales_Order_ID As Integer
                Public Property Line_ID As Integer
                Public Property Item_Id As Integer
                Public Property Description As String
                Public Property UOM_Code As String
                Public Property Schedule_Delivery_Date As String
                Public Property QTY As Integer
                Public Property Confirm_QTY As Integer
                Public Property Unit_Price As Decimal
                Public Property Amount As Decimal
                Public Property QTY_Delivery As Integer
                Public Property QTY_Cancel As Integer
                Public Property Promotion_Flag As String
                Public Property Original_Line_ID As String
                Public Property Promotion_ID As Integer
                Public Property QTY_Discount As Integer
                Public Property AMT_Discount As Integer



            End Class
        End Namespace
    End Namespace
End Namespace

