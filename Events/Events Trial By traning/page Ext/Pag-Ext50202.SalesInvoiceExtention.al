pageextension 50202 SalesInvoiceExtention extends "Sales Invoice"
{
    layout
    {
        addafter(Status)
        {
            field("Sample Custom Field"; Rec."sample Custom Field")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }

    }
}
