page 50222 "Vendor Rating By Pur. Ord."
{
    ApplicationArea = All;
    Caption = 'Vendor Rating By Pur. Ord.';
    PageType = List;
    SourceTable = "Vendor Rating PO 2";
    UsageCategory = Lists;
    CardPageId = "Vendor Rating Card By PO";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(VRPO; Rec.VRPO)
                {
                    ToolTip = 'Specifies the value of the VRPO field.';
                }
                field("Purchase Order No"; Rec."Purchase Order No")
                {
                    ToolTip = 'Specifies the value of the Purchase Order No field.';
                }
                field("Buy From Venodr No."; Rec."Buy From Vendor No.")
                {
                    ToolTip = 'Specifies the value of the Buy From Venodr No. field.';
                }
                field("Buy From Vendor Name"; Rec."Buy From Vendor Name")
                {
                    ToolTip = 'Specifies the value of the Buy From Vendor Name field.';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.';
                }
                field("Material Quality"; Rec."Material Quality")
                {
                    ToolTip = 'Specifies the value of the Material Quality field.';
                }

                field("Credit Period"; Rec."Credit Period")
                {
                    ToolTip = 'Specifies the value of the Credit Period field.';
                }
                field("On Time Delivery"; Rec.OnTimeDelivery)
                {
                    Caption = 'On Time Delivery';
                    ToolTip = 'Specifies the value of the Quality field.';
                }
                field("Over all Rating"; Rec."Over all Rating")
                {
                    ToolTip = 'Specifies the value of the Over all Rating field.';
                }
            }
        }
    }
}
