page 50234 "Vendor rating API Page"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'vendorRatingAPI';
    DelayedInsert = true;
    EntityName = 'VendorRating';
    EntitySetName = 'VendorRatingNameS';
    PageType = API;
    SourceTable = "Vendor Rating PO 2";

    layout
    {
        area(content)
        {
            repeater(General)
            {

                field(purchaseNo; Rec."Purchase Order No")
                {
                    Caption = 'Purchase Order No';

                }

                // field(buyFromVendorName; Rec."Buy From Vendor Name")
                // {
                //     Caption = 'Buy From Vendor Name';
                // }
                // field(buyFromVendorNo; Rec."Buy From Vendor No.")
                // {
                //     Caption = 'Buy From Venodr No.';

                // }
                field(creditPeriod; Rec."Credit Period")
                {
                    Caption = 'Credit Period';
                }
                field(materialQuality; Rec."Material Quality")
                {
                    Caption = 'Material Quality';
                }
                field(onTimeDelivery; Rec.OnTimeDelivery)
                {
                    Caption = 'Quality';
                }
                // field(overAllRating; Rec."Over all Rating")
                // {
                //     Caption = 'Over all Rating';
                // }
                field(price; Rec.Price)
                {
                    Caption = 'Price';
                }
                // field(vrpo; Rec.VRPO)
                // {
                //     Caption = 'VRPO';
                // }
                // field(vendorRating; Rec."Vendor Rating")
                // {
                //     Caption = 'Payble Amount';
                // }
            }
        }
    }

}
