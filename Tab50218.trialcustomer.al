table 50218 trialcustomer
{
    Caption = 'trialcustomer';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Pk; Integer)
        {
            Caption = 'Pk';
            DataClassification = ToBeClassified;
        }
        field(2; "Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Purchase Header"."No.";  // where("Balance (LCY)" = filter(>= 10000));

        }

        field(3; "Vendor Name"; Text[150])
        {

            FieldClass = FlowField;
            CalcFormula = lookup("Purchase Header"."Buy-from Vendor Name" where("No." = field("Vendor No.")));
        }

        field(4; "Vendor addres"; Text[150])
        {

            FieldClass = FlowField;
            CalcFormula = lookup("Purchase Header"."Ship-to Address" where("No." = field("Vendor No.")));
        }
    }
    keys
    {
        key(PK; Pk)
        {
            Clustered = true;
        }
    }
}
