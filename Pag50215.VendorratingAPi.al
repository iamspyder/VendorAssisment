page 50215 "Vendor rating APi"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'vendorRatingAPi';
    DelayedInsert = true;
    EntityName = 'entityName';
    EntitySetName = 'entitySetName';
    PageType = API;
    SourceTable = "Vendor Rating";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(vrID; Rec.VrID)
                {
                    Caption = 'VrID';
                }
                field(vendorId; Rec."Vendor Id")
                {
                    Caption = 'Vendor id';
                }
                field(creditPeriod; Rec."Credit Period")
                {
                    Caption = 'Credit Period';
                }
                field(materialQuality; Rec."Material Quality")
                {
                    Caption = 'Material Quality';
                }
                field(onTimeDelivery; Rec."On Time Delivery")
                {
                    Caption = 'On Time Delivery';
                }
                field(price; Rec.Price)
                {
                    Caption = 'Price';
                }
                field(overAllRating; Rec."Over all Rating")
                {
                    Caption = 'Over all Rating';
                }
            }
        }
    }
}
