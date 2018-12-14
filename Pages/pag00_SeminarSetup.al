page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar nos."; "Seminar Nos.")
                {
                }
                field("Seminar Registration Nos."; "Seminar Registration Nos.")
                {
                }
                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                { }


            }
        }
    }


    trigger OnOpenPage();
    begin
        If not get then begin
            init;
            insert;
        end;
    end;
}


