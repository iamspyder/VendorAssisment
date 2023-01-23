page 50243 "Vendor Rating API Update n Viw"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'vendorRatingAPIUpdateNViw';
    DelayedInsert = true;
    EntityName = 'VendorRatingUpdateView';
    EntitySetName = 'VendorRatingUpdateViews';
    PageType = API;
    SourceTable = "Vendor Rating PO 2";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(vrpo; Rec.VRPO)
                {
                    Caption = 'VRPO';
                }
                field(BuyFromVendorName; Rec."Buy From Vendor Name")
                {
                    Caption = 'Buy From Vendor Name';
                }
                field(BuyFromVendorNo; Rec."Buy From Vendor No.")
                {
                    Caption = 'Buy From Venodr No.';
                }
                field(CreditPeriod; Rec."Credit Period")
                {
                    Caption = 'Credit Period';
                }
                field(MaterialQuality; Rec."Material Quality")
                {
                    Caption = 'Material Quality';
                }
                field(OnTimeDelivery; Rec.OnTimeDelivery)
                {
                    Caption = 'Quality';
                }
                field(OverAllRating; Rec."Over all Rating")
                {
                    Caption = 'Over all Rating';
                }
                field(Price; Rec.Price)
                {
                    Caption = 'Price';
                }
                field(PaybleAmount; Rec."Vendor Rating")
                {
                    Caption = 'Payble Amount';
                }
                field(purchaseOrderNo; Rec."Purchase Order No")
                {
                    Caption = 'Purchase Order No';
                }
            }
        }
    }
}
