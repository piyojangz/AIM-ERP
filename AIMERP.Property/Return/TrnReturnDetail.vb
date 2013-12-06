Namespace Sale
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnReturnDetail
                Inherits BaseProperty

                Public Property Org_ID As Integer
                Public Property Return_Order_ID As Integer
                Public Property Line_ID As Integer
                Public Property Item_Id As Integer
                Public Property Description As String
                Public Property UOM_Code As String
                Public Property Return_Reason As String
                Public Property Sales_Order_Number As String
                Public Property Sales_Order_Line_No As Integer
                Public Property QTY As Integer
                Public Property Unit_Price As Decimal
                Public Property Amount As Decimal

            End Class
        End Namespace
    End Namespace
End Namespace

