using CatalogService as service from '../../srv/CatalogService';


//annotation our PO entity which comes from the service layer
annotate service.PurchaseOrderSet with @(
    //Selection fields for the filter bar
    UI.SelectionFields: [
        PO_ID,
        PARTNER_GUID.COMPANY_NAME,
        PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        GROSS_AMOUNT,
        OVERALL_STATUS
    ],
    //Columns to be added in the table - Ctrl+space for code completion
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.COMPANY_NAME,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : OVERALL_STATUS
        },
                {
            $Type : 'UI.DataField',
            Value : OverallStatus,
            Criticality: IconColor
        },

    ]

 UI.HeaderInfo: {
        TypeName: 'Purchase Order',
        TypeNamePlural: 'Purchase Orders',
        Title: {Value: PO_ID},
        Description: {Value: PARTNER_GUID.COMPANY_NAME},
        ImageUrl: 'https://images.seeklogo.com/logo-png/12/2/sony-logo-png_seeklogo-129420.png'
    },
    //Add multiple tabs in a tabstrip = Facets
    UI.Facets: [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Additional Info',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'More Info',
                    Target : '@UI.Identification',
                },
            ],
        },
    ],
    ///a default block which is a collection of fields - Identification block
    UI.Identification: [
        {
            $Type : 'UI.DataField',
            Value : NODE_KEY,
        },
        {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : NOTE,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID_NODE_KEY,
        },
    ]
);


annotate service.PurchaseOrderSet with {
    @Common : { FilterDefaultValue : 'P', }
    OVERALL_STATUS;
};

