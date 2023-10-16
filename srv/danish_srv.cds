
using app.danish from '../db/danish';
service CatalogService {

 entity Header
    as projection on danish.Header;
 entity Items
    as projection on  danish.Items;

}

