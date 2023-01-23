tableextension 50236 CustomerLedgerEntryExt extends "Cust. Ledger Entry"
{
    fields
    {
        field(50200; "Sample Custom Field"; Text[100])
        {
            Caption = 'Sample Custom Field';
            DataClassification = CustomerContent;
        }
     
    }
}
