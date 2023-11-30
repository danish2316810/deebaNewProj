sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bpbussiness/projectbp1/test/integration/FirstJourney',
		'bpbussiness/projectbp1/test/integration/pages/bussinessPartnerList',
		'bpbussiness/projectbp1/test/integration/pages/bussinessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, bussinessPartnerList, bussinessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bpbussiness/projectbp1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebussinessPartnerList: bussinessPartnerList,
					onThebussinessPartnerObjectPage: bussinessPartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);