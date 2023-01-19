page 50219 trialcus
{
    ApplicationArea = All;
    Caption = 'trialcus';
    PageType = List;
    SourceTable = Customer;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {

                field(Id; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Name; Rec."Address 2")
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }

                field(Address; Rec."Contact Type")
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        MyProcedure();
                    end;
                }

            }
        }
    }

    local procedure MyProcedure()
    var
        myInt: Integer;
        rec_vendor: Record Vendor;
        rec_customer: Record Customer;
    begin
        rec_vendor.SetLoadFields(Name); // use to load some specific fields from tables which contains many data
        rec_customer.SetAutoCalcFields("Balance Due (LCY)");
    end;
}
