page 50201 "Vendor Rating List"
{
    ApplicationArea = All;
    Caption = 'Vendor Rating List';
    PageType = List;
    SourceTable = "Vendor Rating";
    UsageCategory = Lists;
    QueryCategory = 'Vendor Rating List';


    layout
    {


        area(content)
        {
            repeater(General)
            {
                field(VrID; Rec.VrID)
                {
                    ToolTip = 'Specifies the value of the VrID field.';
                }
                field("Vendor id"; Rec."Vendor Id")
                {
                    ToolTip = 'Specifies the value of the Vendor Id field.';
                }

                // field("Vendor Name"; Rec."Vendor Name")
                // {
                //     ToolTip = 'Specifies the value of the Vendor Id field.';
                // }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.';
                }
                field("On Time Delivery"; Rec."On Time Delivery")
                {
                    ToolTip = 'Specifies the value of the On Time Delivery field.';
                }
                field("Credit Period"; Rec."Credit Period")
                {
                    ToolTip = 'Specifies the value of the Credit Period field.';
                }
                field("Material Quality"; Rec."Material Quality")
                {
                    ToolTip = 'Specifies the value of the Material Quality field.';
                }
                field("Over all Rating"; Rec."Over all Rating")
                {
                    ToolTip = 'Specifies the value of the Over all Rating field.';
                }
            }
        }
    }

    // actions
    // {
    //     // Adds the action called "My Actions" to the Action menu 
    //     area(Processing)
    //     {
    //         action("VendorRatingQuery")
    //         {
    //             Promoted = true;
    //             PromotedCategory = Process;
    //             ApplicationArea = All;

    //         }
    //     }
    // }

}
