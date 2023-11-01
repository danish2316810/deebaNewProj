namespace app.danish;

using { Country } from '@sap/cds/common';

type UUID : String(36);



context Master {
  entity bussinessPartner {
  key ID : UUID;
  BP_ROLE : String(1);
  EMAIL : String(60);
  PHONE_NUMBER : Int16;
  ADDRESS_GUID : Association to address;
  COMPANY_NAME : String(60);
  
}

entity address {
 key ID	: UUID;
  CITY	: String(60);
  POSTAL_CODE	: Int16;
  BUILDING	: String(60);
  STREET	: String(60);
  COUNTRY	: String(60);
  bussinessPartner	: Association to one bussinessPartner on bussinessPartner.ADDRESS_GUID=$self;
  purchaseOrder: Association to one purchaseOrder on purchaseOrder.ADDRESS_GUID=$self;
} 

entity purchaseOrder {
  key ID: UUID;	
  PURCHASE_OR_NUM	: String(17);
  COMPANY_NAME	: String(60);
  ADDRESS_GUID : Association to address;
  LINE_ITEMS:Association to ITEMS

}

entity ITEMS{
 key ID : UUID;	
  SO_NUMBER	: String(40);
  QUANTITY	: Int16;
  PRICE	: Int16;
  UNIT_PRICE	:Int16;
  purchaseOrder: Association to one purchaseOrder on purchaseOrder.LINE_ITEMS=$self

 }
}



 
