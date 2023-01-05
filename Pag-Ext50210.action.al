pageextension 50210 "action" extends "Vendor Item List"
{

    actions
    {


        addfirst(Processing)
        {

            action("set filter")
            {
                ApplicationArea = All;
                Caption = 'Filter';
                trigger OnAction()
                begin

                end;
            }

        }


    }

}
