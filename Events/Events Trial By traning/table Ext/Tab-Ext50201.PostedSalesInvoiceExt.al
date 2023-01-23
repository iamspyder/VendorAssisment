tableextension 50238 PostedSalesInvoiceExt extends "Sales Invoice Header"
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
