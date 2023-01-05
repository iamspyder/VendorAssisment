table 50205 "Vendor Rating items"
{
    Caption = 'Vendor Rating';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; VrID; Integer)
        {
            Caption = 'VrID';
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(2; "Vendor Id"; Text[50])
        {
            Caption = 'Vendor id';
            TableRelation = Vendor;
            DataClassification = ToBeClassified;
        }

        field(3; "items"; Text[50])
        {
            Caption = 'items';
            TableRelation = Item;

            DataClassification = ToBeClassified;
        }


        field(4; "On Time Delivery"; Integer)
        {
            Caption = 'On Time Delivery';
            DataClassification = ToBeClassified;
        }
        field(5; Price; Integer)
        {
            Caption = 'Price';
            DataClassification = ToBeClassified;
        }
        field(6; "Credit Period"; Integer)
        {
            Caption = 'Credit Period';
            DataClassification = ToBeClassified;
        }
        field(7; "Material Quality"; Integer)
        {
            Caption = 'Material Quality';
            DataClassification = ToBeClassified;
        }
        field(8; "Over all Rating"; Integer)
        {
            Caption = 'Over all Rating';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; VrID)
        {
            Clustered = true;
        }

        key(MyKey; "Vendor Id")
        {

        }

        key(MyKey1; items)
        {

        }


    }
}
