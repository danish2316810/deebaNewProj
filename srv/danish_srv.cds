using {app.danish.Master} from '../db/danish';
service CatalogService @(path:'/CatalogService') {
  entity bussinessPartner as projection on Master.bussinessPartner;
  entity address as projection on Master.address;
  entity purchaseOrder as projection on Master.purchaseOrder;
  entity ITEMS as projection on Master.ITEMS;
}
