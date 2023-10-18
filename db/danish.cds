namespace app.danish;

using { Country } from '@sap/cds/common';

type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);

entity Header {
  key ID : Integer;
  ITEMS : Composition of many Items on ITEMS.INTHeader = $self;
  PARTNER : BusinessKey;
  LOG_DATE : SDate;
  BPCOUNTRY : Country;
}

entity Items {
  key INTHeader : association to Header;
  key TEXT_ID : BusinessKey;
  LANGU : String(2);
  LOGTEXT : LText;
}
