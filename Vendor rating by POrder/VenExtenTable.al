tableextension 50223 "vendor Ex table" extends Vendor
{
    fields
    {
        field(401; "Over All Rating"; Decimal)
        {
            Caption = 'Vendor Over All Rating Rating';

            FieldClass = FlowField;
            CalcFormula = average("Vendor Rating PO 2"."Over all Rating" where("Buy From Vendor No." = field("No."))); // Current No
        }

        field(402; "Price Rating"; Integer)
        {
            Caption = 'Price Rating';

            FieldClass = FlowField;
            CalcFormula = average("Vendor Rating PO 2".Price where("Buy From Vendor No." = field("No."))); // Current No
        }

        field(403; "Material Quality"; Integer)
        {
            Caption = 'Material Quality Rating';

            FieldClass = FlowField;
            CalcFormula = average("Vendor Rating PO 2"."Material Quality" where("Buy From Vendor No." = field("No."))); // Current No
        }

        field(404; "OnTimeDelivery"; Integer)
        {
            Caption = 'On Time Delivery Rating';

            FieldClass = FlowField;
            CalcFormula = average("Vendor Rating PO 2".OnTimeDelivery where("Buy From Vendor No." = field("No."))); // Current No
        }

        field(405; "Credit Period"; Integer)
        {
            Caption = 'Credit Period Rating';

            FieldClass = FlowField;
            CalcFormula = average("Vendor Rating PO 2"."Credit Period" where("Buy From Vendor No." = field("No."))); // Current No
        }



    }
}
