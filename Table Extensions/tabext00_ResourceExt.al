tableextension 50100 "CSD ResourceExt" extends Resource
{//Tillæg til Ressource made by Jens Kofod, CGI A/S
    fields
    {

        Modify("profit %")

        {
            trigger OnAfterValidate()

            begin
                Rec.TestField("Unit Cost");
            end;
        }
        Modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }


        field(50101; "CSD Resource Type"; Option)

        {
            Caption = 'Resource Type';
            Optionmembers = "Internal","External";
            OptionCaption = 'Internal, External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        Field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }

    }


    var
        myInt: Integer;
}