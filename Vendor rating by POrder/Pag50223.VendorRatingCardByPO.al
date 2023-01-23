page 50223 "Vendor Rating Card By PO"
{
    ApplicationArea = All;
    Caption = 'Vendor Rating Card By PO';
    PageType = Card;
    SourceTable = "Vendor Rating PO 2";

    layout
    {
        area(content)
        {

            group("Vendor Details")
            {


                field(VRPO; Rec.VRPO)
                {
                    ToolTip = 'Specifies the value of the VRPO field.';
                }
                field("Purchase Order No"; Rec."Purchase Order No")
                {
                    ToolTip = 'Specifies the value of the Purchase Order No field.';
                    trigger OnValidate()
                    var
                        myInt: Text[20];
                    begin

                        CurrPage.Update();
                    end;
                }
                field("Buy From Vendor No."; Rec."Buy From Vendor No.")
                {
                    ToolTip = 'Specifies the value of the Buy From Venodr No. field.';

                }
                field("Buy From Vendor Name"; Rec."Buy From Vendor Name")
                {
                    ToolTip = 'Specifies the value of the Buy From Vendor Name field.';
                }

                field("Vendr rr"; Rec."Vendor Rating")
                {
                    Caption = 'Total Purchase Amount';
                    ToolTip = 'Specifies the value of the Buy From Vendor Name field.';
                }
                // field("Vendaar"; Rec.venaa)
                // {
                //     ToolTip = 'Specifies the value of the Buy From Vendor Name field.';
                // }


            }



            group(Ratings)
            {

                field("Credit Period"; Rec."Credit Period")
                {
                    ToolTip = 'Specifies the value of the Credit Period field.';
                    trigger OnValidate()
                    begin
                        if (Rec."Credit Period" > 5) or (Rec."Credit Period" <= 0) then begin
                            Error('please Enter values between 0 and 5');
                        end;
                        summ := Rec.OnTimeDelivery + Rec.Price + Rec."Material Quality" + Rec."Credit Period";
                        avg := summ / 4;
                        Rec."Over all Rating" := avg;
                    end;
                }
                field("Material Quality"; Rec."Material Quality")
                {
                    ToolTip = 'Specifies the value of the Material Quality field.';
                    trigger OnValidate()
                    begin
                        if (Rec."Material Quality" > 5) or (Rec."Material Quality" <= 0) then begin
                            Error('please Enter values between 0 and 5');
                        end;
                        summ := Rec.OnTimeDelivery + Rec.Price + Rec."Material Quality" + Rec."Credit Period";
                        avg := summ / 4;
                        Rec."Over all Rating" := avg;
                        CurrPage.Update();
                    end;
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.';
                    trigger OnValidate()
                    begin
                        if (Rec.Price > 5) or (Rec.Price <= 0) then begin
                            Error('please Enter values between 0 and 5');
                        end;
                        summ := Rec.OnTimeDelivery + Rec.Price + Rec."Material Quality" + Rec."Credit Period";
                        avg := summ / 4;
                        Rec."Over all Rating" := avg;
                        CurrPage.Update();
                    end;

                }

                field("On time Delivery"; Rec.OnTimeDelivery)
                {
                    Caption = 'On Time Delivery';
                    ToolTip = 'Specifies the value of the Quality field.';
                    trigger OnValidate()
                    begin
                        if (Rec.OnTimeDelivery > 5) or (Rec.OnTimeDelivery <= 0) then begin
                            Error('please Enter values between 0 and 5');
                        end;

                        summ := Rec.OnTimeDelivery + Rec.Price + Rec."Material Quality" + Rec."Credit Period";
                        avg := summ / 4;
                        Rec."Over all Rating" := avg;

                    end;
                }
                field("Over all Rating"; Rec."Over all Rating")
                {
                    ToolTip = 'Specifies the value of the Over all Rating field.';

                    // trigger OnValidate()

                    // var
                    //     myInt: Integer;

                    // begin
                    //     quality := Rec.OnTimeDelivery;
                    //     summ := quality + Rec.Price + Rec."Material Quality" + Rec."Credit Period";
                    //     avg := summ / 4;
                    // end;
                }
            }
        }
    }


    var
        summ: Integer;
        vendorno: text;
        price: Integer;
        quality: Integer;
        avg: Decimal;
}
