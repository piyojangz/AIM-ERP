Namespace PO
    Namespace ServiceContract
        Namespace DataContract
            Public Class TrnPRDetail
                Inherits BaseProperty

                Public Property Org_ID As Integer
                Public Property Requisition_ID As Integer
                Public Property Line_No As Integer
                Public Property Requisition_Type As String
                Public Property Item_Id As Integer
                Public Property Description As String
                Public Property UOM_Code As String
                Public Property Qty As Integer
                Public Property Price As Decimal
                Public Property Amount As Decimal
                Public Property Need_Date As String
                Public Property Close_Flag As String
                Public Property Cancel_Flag As String


            End Class
        End Namespace
    End Namespace
End Namespace


