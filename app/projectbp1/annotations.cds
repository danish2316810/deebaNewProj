using CatalogService as service from '../../srv/danish_srv';

annotate service.bussinessPartner with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BP_ROLE',
            Value : BP_ROLE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EMAIL',
            Value : EMAIL,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PHONE_NUMBER',
            Value : PHONE_NUMBER,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ADDRESS_GUID_ID',
            Value : ADDRESS_GUID_ID,
        },
    ]
);
annotate service.bussinessPartner with {
    ADDRESS_GUID @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'address',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : ADDRESS_GUID_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CITY',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'POSTAL_CODE',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BUILDING',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'STREET',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'COUNTRY',
            },
        ],
    }
};
annotate service.bussinessPartner with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BP_ROLE',
                Value : BP_ROLE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EMAIL',
                Value : EMAIL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PHONE_NUMBER',
                Value : PHONE_NUMBER,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ADDRESS_GUID_ID',
                Value : ADDRESS_GUID_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COMPANY_NAME',
                Value : COMPANY_NAME,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
