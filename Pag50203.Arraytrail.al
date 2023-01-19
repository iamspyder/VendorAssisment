page 50203 "Array trail"
{
    ApplicationArea = All;
    Caption = 'Array trail';
    PageType = List;
    SourceTable = "Vendor Rating";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Credit Period"; Rec."Credit Period")
                {
                    ToolTip = 'Specifies the value of the Credit Period field.';
                }
                field("Material Quality"; Rec."Material Quality")
                {
                    ToolTip = 'Specifies the value of the Material Quality field.';
                }
                field("On Time Delivery"; Rec."On Time Delivery")
                {
                    ToolTip = 'Specifies the value of the On Time Delivery field.';
                }
                field("Over all Rating"; Rec."Over all Rating")
                {
                    ToolTip = 'Specifies the value of the Over all Rating field.';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.';
                }
            }
        }


    }



    actions
    {
        area(Processing)
        {



            action(Array)
            {





                ApplicationArea = All;

                trigger OnAction()
                begin
                    CustomerData[1] := 'Credit Period';
                    CustomerData[2] := 'Material Quality'; // Empty string.  
                    CustomerData[3] := 'On Time Deliveryy';
                    CustomerData[4] := 'Over all Rating'; // A non-empty string that contains blanks.  
                    CustomerData[5] := '=';
                    CustomerData[6] := 'Price'; // Empty string.  
                                                //  Message('Before compression the address is: \%1\%2\%3\%4\%5\%6', CustomerData[1], CustomerData[2], CustomerData[3], CustomerData[4], CustomerData[5], CustomerData[6]);
                                                //  CompressArray(CustomerData); // The empty lines (strings) are removed.  

                    //  Message('After compression the address is: \%1\%2\%3\%4\%5\%6', CustomerData[1], CustomerData[2], CustomerData[3], CustomerData[4], CustomerData[5], CustomerData[6]);

                    bb := Format(CustomerData[5]);
                    //   Message(CustomerData[5], bb);
                    //   Rec.SetFilter("Material Quality", 'CustomerData[5]+3');
                    Rec.SetFilter("Material Quality", Format(CustomerData[5]) + '3');
                    //  Rec.SetFilter("", Format(CustomerData[5]) + '3');

                    //  Rec.SetFilter("Format(CustomerData[1])", '>=3');
                    //  Message(CustomerData[3]);

                end;
            }



        }

    }


    var
        CustomerData: array[6] of Text;

        bb: Text;


}
