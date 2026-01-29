sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"sony/sunanda/managepurchaseorder/test/integration/pages/PurchaseOrderSetList",
	"sony/sunanda/managepurchaseorder/test/integration/pages/PurchaseOrderSetObjectPage"
], function (JourneyRunner, PurchaseOrderSetList, PurchaseOrderSetObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('sony/sunanda/managepurchaseorder') + '/test/flp.html#app-preview',
        pages: {
			onThePurchaseOrderSetList: PurchaseOrderSetList,
			onThePurchaseOrderSetObjectPage: PurchaseOrderSetObjectPage
        },
        async: true
    });

    return runner;
});

