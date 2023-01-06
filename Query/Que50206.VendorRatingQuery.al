query 50206 "VendorRatingQuery"
{


    Caption = 'Vendor Rating Query';
    QueryType = Normal;
    QueryCategory = 'Vendor Rating List';
    TopNumberOfRows = 10;
    // OrderBy = descending(Price);
    // OrderBy = descending(MaterialQuality, Price);
    // OrderBy = ascending(Price);






    elements
    {
        dataitem(VendorRating; "Vendor Rating")
        {
            column(VrID; VrID)
            {
            }
            column(VendorId; "Vendor Id")
            {
            }
            column(Price; Price)
            {

            }

            column(MaterialQuality; "Material Quality")
            {
            }
            column(OnTimeDelivery; "On Time Delivery")
            {
            }
            column(OverallRating; "Over all Rating")
            {
            }
        }
    }



    var
        rec_vendor: Record "Vendor Rating";












    //     Options: Text[30];
    //     Selected: Integer;
    //     // Text000: Label 'Save,Delete,Exit,Find';
    //     Text000: Label 'Price,OverAll Rating';
    //     Text001: Label 'You selected option %1.';
    //     Text002: Label 'Choose one of the following options:';


    // trigger OnBeforeOpen()
    // begin

    //     rec_vendor.SetFilter(Price, '<%1', 3);
    // end;

    // trigger OnBeforeOpen()
    // begin
    //     Options := Text000;
    //     // Sets the default to option 3  
    //     Selected := Dialog.StrMenu(Options, 2, Text002);

    //     if (Selected = 1) then begin
    //         TPrice := 'Price'
    //     end;

    //     Message(Text001, Selected);

    // end;
}
