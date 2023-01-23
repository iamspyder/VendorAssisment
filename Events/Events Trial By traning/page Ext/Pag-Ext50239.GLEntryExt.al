pageextension 50200 GLEntryExt extends "General Ledger Entries"
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
