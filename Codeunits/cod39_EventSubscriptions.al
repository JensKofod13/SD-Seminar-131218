codeunit 50139 EventSubscriptions
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 2-1
{
  [EventSubscriber(ObjectType::Codeunit, 212,'OnBeforeResLedgEntryInsert', '', true, true)]
  local procedure PostResJnlLineOnBeforeResLedgEntryInsert(var ResLedgerEntry : Record "Res. Ledger Entry";ResJournalLine : Record "Res. Journal Line");
  var
    c : Codeunit "Res. Jnl.-Post Line";
  begin   
      ResLedgerEntry."CSD Seminar No.":=ResJournalLine."CSD Seminar No.";
      ResLedgerEntry."CSD Seminar Registration No.":=ResJournalLine."CSD Seminar Registration No."; 
  end;
  [EventSubscriber(ObjectType::Page, 344, 'OnAfterNavigateFindRecords', '', true, true)]
  local procedure ExtendNavigateOnAferNavigateFindRecords()
  (var DocumentEntry : record "Document Entry");
  DocNoFilter : Text;
  
  begin
    
  end;
  
}
