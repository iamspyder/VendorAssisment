page 50207 "Vendor Item Rating Card"
{
    ApplicationArea = All;
    Caption = 'Vendor Rating Card';
    PageType = Card;
    SourceTable = "Vendor Rating items";

    layout
    {
        area(content)
        {
            group(General)
            {
                field(VrID; Rec.VrID)
                {
                    ToolTip = 'Specifies the value of the VrID field.';
                }
                field("Vendor Id"; Rec."Vendor Id")
                {
                    ToolTip = 'Specifies the value of the Vendor Id field.';
                }

                field("Vendor Name"; Rec."items")
                {
                    ToolTip = 'Specifies the value of the Purchase Order field.';
                }

                field("Credit Period"; Rec."Credit Period")
                {
                    ToolTip = 'Specifies the value of the Credit Period field.';
                    trigger OnValidate()
                    begin


                        if (Rec."Credit Period" >= 5) then begin
                            Error('no is greater than 5');
                        end;
                    end;
                }
                field(Price; Rec.Price)
                {

                    ToolTip = 'Specifies the value of the Price field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
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

            }
        }
    }
}
