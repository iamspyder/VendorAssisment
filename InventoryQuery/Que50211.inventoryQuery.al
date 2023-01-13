query 50211 "inventory Query"
{
    Caption = 'inventory Query';
    QueryType = Normal;
    QueryCategory = 'Item List';

    elements
    {
        dataitem(Item; Item)
        {

            column(No; "No.")
            {

            }

            column(Inventory; Inventory)
            {
                //  ColumnFilter = Inventory = filter(= 1);
            }
            column(Description; Description)
            {
            }
            column(type; Type)
            {

            }




        }
    }

    trigger OnBeforeOpen()
    begin

        CurrQuery.SetFilter(Inventory, '=1');
        // begin
        // Options := 'inventory Less than 50,inventory Less than 10,inventory Less than 5,inventory 0,Inventory in Negative';

        //  Selected := Dialog.StrMenu(Options, 0, Text002);


        //   Message(Text002, Options);

        //     case Selected of

        //         1:
        //             begin

        //                 CurrQuery.SetFilter(Inventory, '<50');
        //             end;

        //         2:
        //             begin
        //                 CurrQuery.SetFilter(Inventory, '<10');
        //             end;


        //         3:
        //             begin
        //                 CurrQuery.SetFilter(Inventory, '<5');
        //             end;


        //         4:
        //             begin
        //                 CurrQuery.SetFilter(Inventory, '=0');
        //             end;

        //         5:
        //             begin
        //                 CurrQuery.SetFilter(Inventory, '<0');
        //             end;

        //         else
        //             Message('You have not Selected any Filter.');

        //     end;

        // end;



    end;

    var


        Options: Text[150];
        Selected: Integer;

        Text002: Label 'Choose one of the following options:';




}
