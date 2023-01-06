query 50207 "Query with vendor name"
{
    Caption = 'Query with vendor name';
    QueryType = Normal;
    QueryCategory = 'Vendor Rating List';



    elements
    {
        dataitem(VendorRating; "Vendor Rating")
        {
            column(VrID; VrID)
            {
            }

            dataitem(Vendor_detail; Vendor)
            {
                DataItemLink = "No." = VendorRating."Vendor Id";   // here we are joinng vendor table name field with our vendor rating table 
                SqlJoinType = InnerJoin;

                column(Vendor_Name; Name)
                {

                }

            }
            column(VendorId; "Vendor Id")
            {
            }
            column(CreditPeriod; "Credit Period")
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
            column(Price; Price)
            {
                //  Method = Average;
                ColumnFilter = Price = filter(> 3);  // col filter is using for filtering columns 
            }



        }
    }







    trigger OnBeforeOpen()
    begin
        // CurrQuery.SetFilter(OverallRating, '>3');  // set filter is on trriger

    end;














    // trigger OnBeforeOpen()
    // begin
    //    // CurrQuery.SetFilter(OverallRating, '>3');  // set filter is on trriger

    // end;
}
