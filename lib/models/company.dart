class Company {
  String name;
  String code;
  double high;
  double low;
  double open;
  double close;
  double increase;

  Company({
    required this.name,
    required this.code,
    required this.high,
    required this.low,
    required this.open,
    required this.close,
    required this.increase
    });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'],
      code: json['code'],
      high: json['high'],
      low: json['low'],
      open: json['open'],
      close: json['close'],
      increase: json['increase'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'code': code, 'high': high, 'low': low, 'close': close, 'open': open, 'increase': increase};
  }

}