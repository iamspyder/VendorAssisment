tableextension 50235 SlaesInvExt extends "Sales Header"
{
    fields
    {
        field(50200; "sample Custom Field"; Text[100])
        {
            Caption = 'sample Custom Field';
            DataClassification = CustomerContent;
        }
      
    }
}
