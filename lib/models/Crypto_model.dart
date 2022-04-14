class Crypto {
  String symbol;
  String baseAsset;
  String quoteAsset;
  String openPrice;
  String lowPrice;
  String highPrice;
  String lastPrice;
  String volume;
  String bidPrice;
  String askPrice;

  Crypto(
      this.symbol,
      this.askPrice,
      this.baseAsset,
      this.bidPrice,
      this.highPrice,
      this.lastPrice,
      this.lowPrice,
      this.openPrice,
      this.quoteAsset,
      this.volume);

  factory Crypto.fromJson(dynamic json) {
    return Crypto(
      json['symbol'] as String,
      json['askPrice'] as String,
      json['baseAsset'] as String,
      json['bidPrice'] as String,
      json['highPrice'] as String,
      json['lastPrice'] as String,
      json['lowPrice'] as String,
      json['openPrice'] as String,
      json['quoteAsset'] as String,
      json['volume'] as String,
    );
  }

  @override
  String toString() {
    return '{ $symbol, $askPrice, $baseAsset, $bidPrice, $highPrice, $lastPrice, $lowPrice, $openPrice, $quoteAsset, $volume }';
  }
}
