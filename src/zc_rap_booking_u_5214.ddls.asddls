@EndUserText.label: 'Booking DATA'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity ZC_RAP_BOOKING_U_5214 as projection on ZI_RAP_BOOKING_U_5214 {
    //ZI_RAP_BOOKING_U_5214
    @Search.defaultSearchElement: true
    key TravelID,
    @Search.defaultSearchElement: true
    key BookingID,
    BookingDate,
    @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Customer', element: 'CustomerID' } }]
    CustomerID,
    @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Carrier', element: 'AirlineID' } }]
    CarrierID,
     @Consumption.valueHelpDefinition: [{ entity :{ name: '/DMO/I_Flight' , element : 'ConnectionID'  },
     
                                         additionalBinding: [{ localElement: 'CarrierID' ,element: 'AirlineID, usage: #RESULT' } ,
                                         {localElement: 'FlightDate', element: 'FlightDate', usage: #RESULT },
                                         { localElement: 'FlightPrice' ,element: 'Price',usage: #RESULT},
                                         {localElement: 'CurrencyCode', element: 'CurrencyCode', usage: #RESULT} ] }] 
    ConnectionID,
    FlightDate,
     @Semantics.amount.currencyCode: 'CurrencyCode'
    FlightPrice,
     @Consumption.valueHelpDefinition: [{entity :{ name : 'I_Currency', element : 'Currency'} }]
    CurrencyCode,
    /* Associations */
    //ZI_RAP_BOOKING_U_5214
    _Carrier,
    _Connection,
    _Customer,
    _Flight,
    _Travel : redirected to parent ZC_RAP_TRAVEL_U_5214
}
