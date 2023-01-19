pageextension 50224 "ext vendor" extends "Vendor Card"
{
    layout
    {

        addlast(General)
        {

            group("Vendor Ratings Acc. To Past Purchase")

            {

                field("Over All Rating"; rec."Over All Rating")
                {
                    Caption = 'Over All Rating';
                    ApplicationArea = All;
                    Editable = false;

                }

                field("Price Rating"; rec."Price Rating")
                {
                    Caption = 'Price Rating';
                    ApplicationArea = All;

                }

                field("Material Quality"; rec."Material Quality")
                {
                    Caption = 'Material Quality Rating';
                    ApplicationArea = All;

                }

                field("OnTimeDelivery"; rec."OnTimeDelivery")
                {
                    Caption = 'On Time Delivery Rating';
                    ApplicationArea = All;

                }

                field("Credit Period"; rec."Credit Period")
                {
                    Caption = 'Credit Period Rating';
                    ApplicationArea = All;

                }



            }
        }


    }

}
