table 50221 "Vendor Rating PO 2"
{
    Caption = 'Vendor Rating PO 2';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; VRPO; Integer)
        {
            Caption = 'VRPO';
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(2; "Purchase Order No"; Code[20])
        {
            Caption = 'Purchase Order No';
            DataClassification = ToBeClassified;
            TableRelation = "Purch. Inv. Header"."No.";
        }
        field(3; "Buy From Vendor Name"; Text[150])
        {
            Caption = 'Buy From Vendor Name';

            FieldClass = FlowField;
            CalcFormula = lookup("Purch. Inv. Header"."Buy-from Vendor Name" where("No." = field("Purchase Order No")));
        }
        field(4; "Buy From Vendor No."; Text[150])
        {
            Caption = 'Buy From Venodr No.';
            FieldClass = FlowField;
            CalcFormula = lookup("Purch. Inv. Header"."Buy-from Vendor No." where("No." = field("Purchase Order No")));

        }

        // field(10; "venaa"; Text[150])
        // {
        //     Caption = 'Vendor Rating aa';

        // }


        field(400; "Vendor Rating"; Decimal)
        {
            Caption = 'Payble Amount';
            Editable = false;
            CalcFormula = - Sum("Detailed Vendor Ledg. Entry".Amount WHERE("Vendor No." = FIELD("Buy From Vendor No.")));

            //   CalcFormula = sum("Detailed Vendor Ledg. Entry".Amount);
            FieldClass = FlowField;

            // CalcFormula = sum("Detailed Vendor Ledg. Entry".Amount where("Vendor No." = field("Buy From Venodr No."))); // Current No
        }

        field(5; Price; Integer)
        {
            Caption = 'Price';
            DataClassification = ToBeClassified;
        }
        field(6; OnTimeDelivery; Integer)
        {
            Caption = 'Quality';
            DataClassification = ToBeClassified;
        }
        field(7; "Credit Period"; Integer)
        {
            Caption = 'Credit Period';
            DataClassification = ToBeClassified;

        }
        field(8; "Material Quality"; Integer)
        {
            Caption = 'Material Quality';

            DataClassification = ToBeClassified;
        }
        field(9; "Over all Rating"; Decimal)
        {
            Caption = 'Over all Rating';



        }

    }


    keys
    {
        key(PK; VRPO)
        {
            Clustered = true;
        }
    }
    var

        sums: Integer;
        vendorno: text;

}
