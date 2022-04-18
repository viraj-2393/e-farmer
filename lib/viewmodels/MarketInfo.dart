
import 'package:efarmer/models/MarketData.dart';

class MarketInfo{
  MarketData marketData;
  MarketInfo(this.marketData);

  String get state{
    return marketData.state;
  }
  String get district{
    return marketData.district;
  }
  String get market{
    return marketData.market;
  }
  String get commodity{
    return marketData.commodity;
  }
  String get variety{
    return marketData.variety;
  }
  String get arrival{
    return marketData.arrival_date;
  }
  String get min_price{
    return marketData.min_price;
  }
  String get max_price{
    return marketData.max_price;
  }
  String get modal_price{
    return marketData.modal_price;
  }
}
