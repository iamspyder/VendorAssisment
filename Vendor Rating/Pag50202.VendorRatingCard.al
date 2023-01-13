page 50202 "Vendor Rating Card"
{
    ApplicationArea = All;
    Caption = 'Vendor Rating Card';
    PageType = Card;
    SourceTable = "Vendor Rating";

    layout
    {
        area(content)
        {

            group("Vendor Details")
            {
                field(VrID; Rec.VrID)
                {
                    ToolTip = 'Specifies the value of the VrID field.';
                }
                field("Vendor Id"; Rec."Vendor Id")
                {
                    ToolTip = 'Specifies the value of the Vendor Id field.';
                }
            }
            group(Ratings)
            {

                field("Credit Period"; Rec."Credit Period")
                {
                    ToolTip = 'Specifies the value of the Credit Period field.';
                    ShowMandatory = true;
                    NotBlank = true;
                    trigger OnValidate()
                    begin
                        if (Rec."Credit Period" > 5) or (Rec."Credit Period" <= 0) then begin
                            Error('please Enter values between 0 and 5');
                        end;
                    end;
                }
                field(Price; Rec.Price)
                {

                    ToolTip = 'Specifies the value of the Price field.';
                    ShowMandatory = true;
                    NotBlank = true;
                    trigger OnValidate()
                    begin
                        if (Rec.Price > 5) or (Rec.Price <= 0) then begin
                            Error('please Enter values between 0 and 5');
                        end;
                    end;
                }

                field("Material Quality"; Rec."Material Quality")
                {
                    ToolTip = 'Specifies the value of the Material Quality field.';
                    ShowMandatory = true;
                    NotBlank = true;
                    trigger OnValidate()
                    begin
                        if (Rec."Material Quality" > 5) or (Rec."Material Quality" <= 0) then begin
                            Error('please Enter values between 0 and 5');
                        end;
                    end;
                }
                field("On Time Delivery"; Rec."On Time Delivery")
                {
                    ToolTip = 'Specifies the value of the On Time Delivery field.';
                    ShowMandatory = true;
                    NotBlank = true;
                    trigger OnValidate()
                    begin
                        if (Rec."On Time Delivery" > 5) or (Rec."On Time Delivery" <= 0) then begin
                            Error('please Enter values between 0 and 5');
                        end;
                    end;
                }
                field("Over all Rating"; Rec."Over all Rating")
                {
                    ToolTip = 'Specifies the value of the Over all Rating field.';
                }

            }
        }



    }







}
