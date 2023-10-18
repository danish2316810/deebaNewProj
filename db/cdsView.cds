namespace app.danish;

using {app.danish.Header, app.danish.Items} from './danish';

context CDSViews {
    define view ![dancdsview] as
        select from Header
            left outer join Items on Header.ID = Items.INTHeader.ID
        {
            key ID as ![cdsID],
            PARTNER as ![cdsPartner],
            LANGU as![cdsLangu]
        }
}


