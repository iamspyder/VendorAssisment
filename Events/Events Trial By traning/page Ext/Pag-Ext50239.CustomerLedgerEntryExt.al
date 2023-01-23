pageextension 50239 CustomerLedgerEntryExt extends "Customer Ledger Entries"
{
    layout
    {
        addafter(Description)
        {
            field("Sample Custom Field"; Rec."sample Custom Field")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }

    }
}
