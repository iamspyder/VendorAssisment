pageextension 50201 VendorpurExt extends "9022"
{
    actions
    {
        // addlast(Action41)
        // {
        //     group("Vendor Rating")
        //     {
        //         action("ZY EMPLOYEEOO2")
        //         {

        //             ApplicationArea = Basic, Suite;
        //             Caption = 'Vendor rating';
        //             Promoted = true;
        //             PromotedCategory = Process;
        //             RunObject = Page "Vendor Rating By Pur. Ord.";
        //             ToolTip = 'View or edit detailed information for the vendors that you trade with. From each vendor card, you can open related information, such as purchase statistics and ongoing orders, and you can define special prices and line discounts that the vendor grants you if certain conditions are met.';
        //         }
        //     }
        // }

        addlast(Action41)

        {

            action("Rating")

            {
                Caption = 'Vendor Ratings';
                RunObject = Page "Vendor Rating By Pur. Ord.";

                ApplicationArea = All;

            }

        }
    }
}
