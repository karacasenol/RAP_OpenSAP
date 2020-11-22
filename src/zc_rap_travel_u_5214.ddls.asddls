@EndUserText.label: 'Travel DATA'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root  view entity ZC_RAP_TRAVEL_U_5214 as projection on ZI_RAP_TRAVEL_U_5214 {
    //ZI_RAP_TRAVEL_U_5214
    key TravelID,
    @Search.defaultSearchElement: true
//    @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Agency', element: 'AgencyID' } }]
    @Consumption.valueHelpDefinition: [{ entity: { name: 'zce_rap_agency_5214', element: 'AgencyId' } }]
    AgencyID,
    @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Customer', element: 'CustomerID' } }]
    @Search.defaultSearchElement: true
    CustomerID,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Currency', element: 'Currency' } }]
    CurrencyCode,
    Description,
    Status,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    
    /* Associations */
    //ZI_RAP_TRAVEL_U_5214
    _Agency,
    _Booking : redirected to composition child ZC_RAP_BOOKING_U_5214,
    _Currency,
    _Customer
}
