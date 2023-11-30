sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'bpbussiness.projectbp1',
            componentId: 'bussinessPartnerObjectPage',
            contextPath: '/bussinessPartner'
        },
        CustomPageDefinitions
    );
});