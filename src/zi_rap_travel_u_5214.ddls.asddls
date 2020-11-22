@EndUserText.label: 'Travel DATA'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_RAP_TRAVEL_U_5214
  as select from /dmo/travel

  composition [0..*] of ZI_RAP_BOOKING_U_5214 as _Booking

  association [0..1] to /DMO/I_Agency   as _Agency   on $projection.AgencyID = _Agency.AgencyID
////  association [0..1] to zce_rap_agency_5214 as _Agency   on $projection.AgencyID = _Agency.AgencyId
  association [0..1] to /DMO/I_Customer as _Customer on $projection.CustomerID = _Customer.CustomerID
  association [0..1] to I_Currency      as _Currency on $projection.CurrencyCode = _Currency.Currency
{
      ///DMO/TRAVEL
  key travel_id     as TravelID,
      agency_id     as AgencyID,
      customer_id   as CustomerID,
      begin_date    as BeginDate,
      end_date      as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee   as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      @Semantics.user.createdBy: true
      createdby     as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      createdat     as CreatedAt,
      @Semantics.user.lastChangedBy: true
      lastchangedby as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat as LastChangedAt,
      
      _Booking,
      _Agency,
      _Customer,
      _Currency


}
