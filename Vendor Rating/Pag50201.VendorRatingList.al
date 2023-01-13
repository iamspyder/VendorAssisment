page 50201 "Vendor Rating List"


{
    ApplicationArea = All;
    Caption = 'Vendor Rating List';
    PageType = List;
    SourceTable = "Vendor Rating";
    UsageCategory = Lists;
    QueryCategory = 'Vendor Rating List';
    CardPageId = "Vendor Rating Card";


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

                    // if (Rec_ven.Price < 5) and (Rec_ven."Credit Period" > 3) then begin
                    //     Rec.SetFilter("Price", '>=3');
                    // end;
                    // //  Rec.SetFilter(("Material Quality", '>2' ) OR ("Price", '>=3') );

                    // // this code is for filters in vendor table 

                    Rec.SetFilter("Price", '>=3');







                end;



                //     --------------------------------    new trial for getting count of vendors   ------------------------------------------------

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




            //      --------------------------------  end   new trial for getting count of vendors   ------------------------------------------------





            //--------------------------------- start this action is for filtering values from user choise  -----------------------------------------

            action(ToGetValueFromUser)

            {
                ApplicationArea = All;
                Caption = 'get value from user';
                trigger OnAction()
                begin
                    // Options := Text000[100];
                    Options := 'Price,Material Quantity,On Time Delivery,Credit Period,Over all Rating';
                    // Sets the default to option 3  
                    Selected := Dialog.StrMenu(Options, 0, Text002);



                    //  Rec.SetFilter("Price", '>=3');
                    // Message(Text001, Selected);

                    // if (Selected = 1) then begin
                    //     Rec.SetFilter("Price", '>=3');
                    // end;

                    // if (Selected = 2) then begin
                    //     Rec.SetFilter("Material Quality", '>=3');
                    // end;

                    case Selected of

                        1:
                            begin

                                Rec.SetFilter("Price", '<3');

                            end;

                        2:
                            begin
                                Rec.SetFilter("Material Quality", '>=3');

                            end;


                        3:
                            begin
                                Rec.SetFilter("On Time Delivery", '>=3');
                            end;


                        4:
                            begin
                                Rec.SetFilter("Credit Period", '>=3');
                            end;

                        5:
                            begin
                                Rec.SetFilter("Over all Rating", '>=3');
                            end;

                        else
                            Message('You have not Selected any Filter.');

                    end;



                end;





            }


            //        --------------------------------- end this action is for filtering values from user choise  -----------------------------------------














            //        --------------------------------- strat this action is for filtering values from user Operator  -----------------------------------------


            action(ActionName)
            {
                ApplicationArea = All;
                Caption = 'Filter By oprators';
                trigger OnAction()
                begin


                    Options := 'Price,Material Quantity,On Time Delivery,Credit Period,Over all Rating';


                    Selected := Dialog.StrMenu(Options, 0, Text002);

                    NUM := ' 1 One, 2 Two, 3 Three, 4 Four, 5 Five';
                    OPR := ' " = " Equal To , " < " Less Than , " > " Greater Than, " <= " Less Than EqualTo , " >= " Greater Than EqualTo';




                    case Selected of

                        1:
                            begin

                                Options := NUM;
                                Selected := Dialog.StrMenu(Options, 0, Text003);  // this selected is for Number you select
                                // Message(text001, Selected);

                                Options := OPR;
                                Selected2 := Dialog.StrMenu(Options, 0, Text004);
                                // Selected = '>='+;
                                //  Message(text001, Selected2);
                                case Selected2 of

                                    1:
                                        begin

                                            Rec.SetFilter("Price", '=' + format(Selected));  // here we are passing [ format selected ] to convert selected value into integer
                                        end;

                                    2:
                                        begin
                                            Rec.SetFilter("Price", '<' + format(Selected));
                                        end;

                                    3:
                                        begin
                                            Rec.SetFilter("Price", '>' + format(Selected));
                                        end;
                                    4:
                                        begin
                                            Rec.SetFilter("Price", '<=' + format(Selected));
                                        end;

                                    5:
                                        begin
                                            Rec.SetFilter("Price", '>=' + format(Selected));
                                        end;

                                    //    Rec.SetFilter("Price", format(Selected2) + format(Selected));

                                    else
                                        Message('You have not Selected any Filter.');

                                end;


                            end;

                        2:
                            begin

                                Options := NUM;
                                Selected := Dialog.StrMenu(Options, 0, Text003);

                                Options := OPR;
                                Selected2 := Dialog.StrMenu(Options, 0, Text004);

                                case Selected2 of

                                    1:
                                        begin

                                            Rec.SetFilter("Material Quality", '=' + format(Selected));
                                        end;

                                    2:
                                        begin
                                            Rec.SetFilter("Material Quality", '<' + format(Selected));
                                        end;

                                    3:
                                        begin
                                            Rec.SetFilter("Material Quality", '>' + format(Selected));
                                        end;
                                    4:
                                        begin
                                            Rec.SetFilter("Material Quality", '<=' + format(Selected));
                                        end;

                                    5:
                                        begin
                                            Rec.SetFilter("Material Quality", '>=' + format(Selected));
                                        end;


                                    else
                                        Message('You have not Selected any Filter.');

                                end;




                            end;


                        3:
                            begin

                                Options := NUM;
                                Selected := Dialog.StrMenu(Options, 0, Text003);

                                Options := OPR;
                                Selected2 := Dialog.StrMenu(Options, 0, Text004);

                                case Selected2 of

                                    1:
                                        begin

                                            Rec.SetFilter("On Time Delivery", '=' + format(Selected));
                                        end;

                                    2:
                                        begin
                                            Rec.SetFilter("On Time Delivery", '<' + format(Selected));
                                        end;

                                    3:
                                        begin
                                            Rec.SetFilter("On Time Delivery", '>' + format(Selected));
                                        end;
                                    4:
                                        begin
                                            Rec.SetFilter("On Time Delivery", '<=' + format(Selected));
                                        end;

                                    5:
                                        begin
                                            Rec.SetFilter("On Time Delivery", '>=' + format(Selected));
                                        end;


                                    else
                                        Message('You have not Selected any Filter.');

                                end;

                            end;


                        4:
                            begin



                                Options := NUM;
                                Selected := Dialog.StrMenu(Options, 0, Text003);

                                Options := OPR;
                                Selected2 := Dialog.StrMenu(Options, 0, Text004);

                                case Selected2 of

                                    1:
                                        begin

                                            Rec.SetFilter("Credit Period", '=' + format(Selected));
                                        end;

                                    2:
                                        begin
                                            Rec.SetFilter("Credit Period", '<' + format(Selected));
                                        end;

                                    3:
                                        begin
                                            Rec.SetFilter("Credit Period", '>' + format(Selected));
                                        end;
                                    4:
                                        begin
                                            Rec.SetFilter("Credit Period", '<=' + format(Selected));
                                        end;

                                    5:
                                        begin
                                            Rec.SetFilter("Credit Period", '>=' + format(Selected));
                                        end;


                                    else
                                        Message('You have not Selected any Filter.');




                                end;





                            end;

                        5:
                            begin


                                Options := NUM;
                                Selected := Dialog.StrMenu(Options, 0, Text003);

                                Options := OPR;
                                Selected2 := Dialog.StrMenu(Options, 0, Text004);

                                case Selected2 of

                                    1:
                                        begin

                                            Rec.SetFilter("Over all Rating", '=' + format(Selected));
                                        end;

                                    2:
                                        begin
                                            Rec.SetFilter("Over all Rating", '<' + format(Selected));
                                        end;

                                    3:
                                        begin
                                            Rec.SetFilter("Over all Rating", '>' + format(Selected));
                                        end;
                                    4:
                                        begin
                                            Rec.SetFilter("Over all Rating", '<=' + format(Selected));
                                        end;

                                    5:
                                        begin
                                            Rec.SetFilter("Over all Rating", '>=' + format(Selected));
                                        end;


                                    else
                                        Message('You have not Selected any Filter.');

                                end;


                            end;

                        else
                            Message('You have not Selected any Filter.');

                    end;




                end;
            }


            //        --------------------------------- end this action is for filtering values from user Operator  -----------------------------------------



        }
    }

    var
        Rec_ven: Record "Vendor Rating";


        //   these variables are for getting value from user  ----------

        Options: Text[150];
        Options2: Integer;
        Selected: Integer;
        Selected2: Integer;
        // Text000: Label 'Prs,Mt Q,On Tm Del,Cr P,Rat';
        Text001: Label 'You selected option %1.';
        Text002: Label 'Choose one of the following Rating you Want to filter:';
        Text003: Label 'Choose the No of Rating You Want';
        Text004: Label 'Choose the Operation You Want';
        NUM: Text[150];
        OPR: Text[200];

        opop: Option;


    //   these variables are for getting value from user  -------------






    // these are for No of counts ------------


    // MyFieldRef: FieldRef;
    // MyFieldRef2: FieldRef;
    // MyFieldRef3: FieldRef;
    // myfilter: Text;
    // CustomerRecref: RecordRef;              /// these variable we have taken for no of counts
    // Count: Integer;
    // Text000: Label '%1 records were retrieved.';

    // these are for No of counts  -------------

}
