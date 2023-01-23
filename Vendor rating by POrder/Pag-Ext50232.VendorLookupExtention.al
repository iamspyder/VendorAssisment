pageextension 50232 "Vendor Lookup Extention" extends "Vendor Lookup"

{

    layout

    {
        addlast(Group)

        {

            field("Over All Rating"; Rec."Over All Rating")
            {
                ApplicationArea = All;
                Visible = true;
            }

            field("Price Rating"; Rec."Price Rating")
            {
                ApplicationArea = All;
            }

            field("On Time Delivery"; Rec.OnTimeDelivery)
            {
                ApplicationArea = All;
            }

            field("Material Quality"; Rec."Material Quality")
            {
                ApplicationArea = All;
            }

            field("Credit Period"; Rec."Credit Period")
            {
                ApplicationArea = All;
            }

        }

    }

    actions
    {
        addfirst(navigation)
        {
            action(Filters)
            {
                ApplicationArea = All;

                trigger OnAction()

                begin

                    Options := 'Price,Material Quantity,On Time Delivery,Credit Period,Over all Rating';

                    Selected := Dialog.StrMenu(Options, 0, Text002);

                    case Selected of

                        1:
                            begin

                                Rec.SetFilter("Price Rating", '>=3');
                               

                            end;

                        2:
                            begin
                                Rec.SetFilter("Material Quality", '>=3');

                            end;


                        3:
                            begin
                                Rec.SetFilter(OnTimeDelivery, '>=3');
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
        }
    }

    var
        Options: Text[150];
        Options2: Integer;
        Selected: Integer;
        Text001: Label 'You selected option %1.';
        Text002: Label 'Choose one of the following Rating you Want to filter:';

}

