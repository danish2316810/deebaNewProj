namespace app.danishCDS;

using {app.danish.Master.bussinessPartner,
  app.danish.Master.address,
  app.danish.Master.purchaseOrder,
  app.danish.Master.ITEMS
} from './danish';

context CDSViews {
    define view ![danCdsView] as
            select from bussinessPartner
      left outer join address on bussinessPartner.ID = address.ID
      left outer join purchaseOrder on bussinessPartner.ID = purchaseOrder.ID
    //   left outer join ITEMS on bussinessPartner.ID = ITEMS.ID

        {
                 key bussinessPartner.ID as ![cdsID],
     bussinessPartner.COMPANY_NAME as ![cdsCOMPANY_NAME],
      EMAIL as ![cdsEMAIL],
      address.CITY as ![cdsCITY],
      address.BUILDING as ![cdsBUILDING],
      address.POSTAL_CODE as ![cdsPOSTAL_CODE],
      purchaseOrder.PURCHASE_OR_NUM as ![cdsPURCHASE_OR_NUM],
    //   LINE_ITEMS as ![cdsLINE_ITEMS],
    //   QUANTITY as ![cdsQUANTITY],
    //   PRICE as ![cdsPRICE],
    //   UNIT_PRICE as ![cdsUNIT_PRICE]

        }
}


