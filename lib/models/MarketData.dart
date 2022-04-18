class MarketData{
  final String state;
  final String district;
  final String market;
  final String commodity;
  final String variety;
  final String arrival_date;
  final String min_price;
  final String max_price;
  final String modal_price;

  MarketData({
    required this.state,
    required this.district,
    required this.market,
    required this.commodity,
    required this.variety,
    required this.arrival_date,
    required this.min_price,
    required this.max_price,
    required this.modal_price
  });

  factory MarketData.fromJSON(Map<String,dynamic> json){
    return MarketData(
        state: json['state'] != null ? json['state']:'',
        district: json['district'] != null ? json['district']:'',
        market: json['market'] != null ? json['market']:'',
        commodity: json['commodity'] != null ? json['commodity']:'',
        variety: json['variety'] != null ? json['variety']:'',
        arrival_date: json['arrival_date'] != null ? json['arrival_date']:'',
        min_price: json['min_price'] != null ? json['min_price']:'',
        max_price: json['max_price'] != null ? json['max_price']:'',
        modal_price: json['modal_price'] != null ? json['modal_price']:''
    );
  }
}