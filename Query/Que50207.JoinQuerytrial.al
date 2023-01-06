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
                DataItemLink = "No." = VendorRating."Vendor Id";
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
                ColumnFilter = Price = filter(> 3);
            }



        }
    }

    trigger OnBeforeOpen()
    begin
        CurrQuery.SetFilter(OverallRating, '>3');
    end;
}
