// pageextension 50200 "Item inventory" extends "Item List"
// {
//     trigger OnOpenPage()
//     begin

//         //   Rec.SetFilter("Inventory", '=0');

//         // if (rec.Inventory = 1) then begin
//         //     Message('your inventory has 1 than Expected', Format(rec.Description));
//         //    // rec.Count
//         //     // Message(Format(rec.Description));


//         // end;

//         itemref.Open(Database::Item);
//         MyFieldRef := itemref.Field(68);

//         MyFieldRef.SetFilter('>1');
//         myfilter := MyFieldRef.GetFilter;
//         //   Message(format(MyFieldRef));
//         Count := 0;
//         if itemref.Find('-') then
//             repeat
//                 Count := Count + 1;
//             until itemref.Next = 0;
//         Message(Text000, Count);

//     end;

//     var
//         count: Integer;
//         itemref: RecordRef;
//         MyFieldRef: FieldRef;
//         myfilter: Text;
//         Text000: Text;
// }




