// phse one Publish event 
// publish event


codeunit 50246 Mypubishers
{
    [IntegrationEvent(false, false)]
    procedure OnAddressLinechanged(line: Text[100])

    begin

    end;


}

// raise event  rise whrer it neded


pageextension 50247 CustomerExt extends "Customer Card"
{
    layout
    {
        modify(Address)
        {
            trigger OnBeforeValidate()
            var
                publisher: Codeunit Mypubishers;
            begin
                publisher.OnAddressLinechanged(Rec.Address);
            end;
        }

    }


}


// Subscribe 

codeunit 50248 Mysubscribers
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::Mypubishers, 'OnAddressLinechanged', '', true, true)]
    local procedure CheckAddressLineOnChange(line: Text[100])

    begin
        if (StrPos(line, '+') > 0) then begin
            Message('you cant use + sign in the address |' + line + '|');
        end;
    end;
}








