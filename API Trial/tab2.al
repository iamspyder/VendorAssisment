table 50236 "Car Model"
{
    DataClassification = CustomerContent;
    Caption = 'Car Model';

    fields
    {
        field(1; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Brand Id"; Guid)
        {
            TableRelation = "Car Brand".SystemId;
            Caption = 'Brand Id';
        }
        field(4; Power; Integer)
        {
            Caption = 'Power (cc)';
        }
        field(5; "Fuel Type"; Enum "Fuel Type")
        {
            Caption = 'Fuel Type';
        }
    }

    keys
    {
        key(PK; Name, "Brand Id")
        {
            Clustered = true;
        }
    }
}

enum 50237 "Fuel Type"
{
    Extensible = true;
    value(0; Petrol)
    {
        Caption = 'Petrol';
    }
    value(1; Diesel)
    {
        Caption = 'Diesel';
    }
    value(2; Electric)
    {
        Caption = 'Electric';
    }
}