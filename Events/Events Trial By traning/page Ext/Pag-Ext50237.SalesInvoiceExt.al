pageextension 50237 PostedSalesInvoiceExt extends "Posted Sales Invoice"
{
    layout{
        addafter (Closed)
        {
            field("Sample Custom Field"; Rec."sample Custom Field")
            {
                   ApplicationArea = All;
                   Editable = false;
            }
        }
    }
}
