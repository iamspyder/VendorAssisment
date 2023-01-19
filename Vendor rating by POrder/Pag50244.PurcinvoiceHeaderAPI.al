page 50244 "Purc invoice Header API"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'purcInvoiceHeaderAPI';
    DelayedInsert = true;
    EntityName = 'PurchaseInv';
    EntitySetName = 'PurchaseInvs';
    PageType = API;
    SourceTable = "Purch. Inv. Header";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(buyFromVendorName; Rec."Buy-from Vendor Name")
                {
                    Caption = 'Buy-from Vendor Name';
                }
                field(buyFromVendorNo; Rec."Buy-from Vendor No.")
                {
                    Caption = 'Buy-from Vendor No.';
                }

                field(Amount; rec.Amount)
                {
                    Caption = 'Payble Amount';
                    Editable = false;
                    TableRelation = "Detailed Vendor Ledg. Entry".Amount;

                    // CalcFormula = - Sum("Detailed Vendor Ledg. Entry".Amount WHERE("Vendor No." = FIELD("Buy From Vendor No.")));

                    //   CalcFormula = sum("Detailed Vendor Ledg. Entry".Amount);
                    //   FieldClass = FlowField;

                    // CalcFormula = sum("Detailed Vendor Ledg. Entry".Amount where("Vendor No." = field("Buy From Venodr No."))); // Current No
                }

            }
        }
    }
}
