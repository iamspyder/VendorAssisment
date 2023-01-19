page 50242 "page car "
{
    ApplicationArea = All;
    Caption = 'page car ';
    PageType = List;
    SourceTable = "Car Model";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Brand Id"; Rec."Brand Id")
                {
                    ToolTip = 'Specifies the value of the Brand Id field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Fuel Type"; Rec."Fuel Type")
                {
                    ToolTip = 'Specifies the value of the Fuel Type field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Power; Rec.Power)
                {
                    ToolTip = 'Specifies the value of the Power (cc) field.';
                }
            }
        }
    }
}
