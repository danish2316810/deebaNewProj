sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'bpbussiness.projectbp1',
            componentId: 'bussinessPartnerList',
            contextPath: '/bussinessPartner'
        },
        CustomPageDefinitions
    );
});