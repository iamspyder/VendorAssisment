page 50201 "Vendor Rating List"


{
    ApplicationArea = All;
    Caption = 'Vendor Rating List';
    PageType = List;
    SourceTable = "Vendor Rating";
    UsageCategory = Lists;
    QueryCategory = 'Vendor Rating List';


    layout
    {

        area(content)
        {
            repeater(General)
            {
                field(VrID; Rec.VrID)
                {
                    ToolTip = 'Specifies the value of the VrID field.';
                }
                field("Vendor id"; Rec."Vendor Id")
                {
                    ToolTip = 'Specifies the value of the Vendor Id field.';
                }

                // field("Vendor Name"; Rec."Vendor Name")
                // {
                //     ToolTip = 'Specifies the value of the Vendor Id field.';
                // }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.';
                }
                field("On Time Delivery"; Rec."On Time Delivery")
                {
                    ToolTip = 'Specifies the value of the On Time Delivery field.';
                }
                field("Credit Period"; Rec."Credit Period")
                {
                    ToolTip = 'Specifies the value of the Credit Period field.';
                }
                field("Material Quality"; Rec."Material Quality")
                {
                    ToolTip = 'Specifies the value of the Material Quality field.';
                }
                field("Over all Rating"; Rec."Over all Rating")
                {
                    ToolTip = 'Specifies the value of the Over all Rating field.';
                }
            }
        }

    }



    actions
    {
        area(Processing)
        {
            action("VendorRatingQuery")

            {
                ApplicationArea = All;
                Caption = 'Set Filter';
                // Promoted = true;
                // PromotedCategory = Process;                         // thses are for icons and give proririty
                // PromotedIsBig = true;
                trigger OnAction()
                begin

                    if (Rec_ven.Price < 5) and (Rec_ven."Credit Period" > 3) then begin
                        Rec.SetFilter("Price", '>=3');
                    end;
                    //  Rec.SetFilter(("Material Quality", '>2' ) OR ("Price", '>=3') );

                    // this code is for filters in vendor table 

                    Rec.SetFilter("Price", '>=3');

                end;






                // new trial for getting count of vendors

                // begin
                //     CustomerRecref.Open(Database::"Vendor Rating");
                //     MyFieldRef := CustomerRecref.Field(5);
                //     MyFieldRef2 := CustomerRecref.Field(7);
                //     MyFieldRef3 := CustomerRecref.Field(6);
                //     //  MyFieldRef.SetRange('1', '4');
                //     MyFieldRef.SetFilter('>=3');                           // we use this code to get count no of vendors by there specific filters
                //     MyFieldRef2.SetFilter('>=3');
                //     MyFieldRef3.SetFilter('<>4');
                //     //  myfilter := MyFieldRef.GetFilter;
                //     //Message(myfilter);
                //     Count := 0;
                //     if CustomerRecref.Find('-') then
                //         repeat
                //             Count := Count + 1;
                //         until CustomerRecref.Next = 0;
                //     Message(Text000, Count);
                // end;

            }
        }
    }

    var
        Rec_ven: Record "Vendor Rating";




        MyFieldRef: FieldRef;
        MyFieldRef2: FieldRef;
        MyFieldRef3: FieldRef;
        myfilter: Text;
        CustomerRecref: RecordRef;
        Count: Integer;
        Text000: Label '%1 records were retrieved.';


    //     actions 
    //     {
    //         // Adds the action called "My Actions" to the Action menu 
    //         area(Processing)
    //         {
    // #if not CLEAN22
    //             // group(filter)
    //             // {
    //             //     Caption = 'filter';

    //                 action("VendorRatingQuery")
    //                 {
    //                     Promoted = true;
    //                     PromotedCategory = Process;
    //                     ApplicationArea = All;
    //                     Caption = 'eeee';

    //                 }


    //         }

    //     }
}
