report 50101 SeminarRegParticipantList
{
    UsageCategory = Administration;
    ApplicationArea = All;
    RDLCLayout = './Layouts/SeminarRegParticipantList.rdl';


    dataset
    {
        dataitem(SeminarRegistrationHeader; "CSD Posted Seminar Reg. Header")
        {
            DataItemTableView = Sorting ("No.");
            RequestFilterFields = "No.", "Seminar No.";
            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Room_Name; "Room Name")
            {
                IncludeCaption = true;
            }
            column(Seminar_Name;"Seminar Name")
            {
            IncludeCaption = true;
            }
            column()
            {
            IncludeCaption = true
            }
            column()
            {
            IncludeCaption = true
            }
            column()
            {
            IncludeCaption = true
            }
            column()
            {
            IncludeCaption = true
            }
        }
        dataitem()
        {
            column()
            IncludeCaption = true
            {

            }
        }
        dataitem()
        {
            column()
            IncludeCaption = true
            {

            }
        }
        dataitem()
        {
            column()
            IncludeCaption = true
            {

            }
        }

    }
        dataitem()
        {
            column()
            IncludeCaption=true
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; SourceExpression)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}