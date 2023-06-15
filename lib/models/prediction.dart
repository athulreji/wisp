class Prediction {
  String name;
  List data;
  List predictions;
  String startdate;

  Prediction({
    required this.name,
    required this.data,
    required this.predictions,
    required this.startdate,
    });

  factory Prediction.fromJson(Map<String, dynamic> json) {
    return Prediction(
      name: json['name'],
      data: json['data'],
      predictions: json['predictions'],
      startdate: json['startdate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'data': data, 'predictions': predictions, 'startdate': startdate};
  }

}