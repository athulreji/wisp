import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:wisp/models/prediction.dart';

Future<Prediction> fetchPredictionsData(symbol) async {
  final url = Uri.parse('https://wisp-api.azurewebsites.net/api/predictions?code=QKdOJ89brC53p2cAXe9jzn4NOhpK3g5KchYjij0fo1rSAzFuRaM9Ow==&name=$symbol');
 
  final response = await http.get(url);
  
  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body)[0];
    final data = Prediction.fromJson(jsonData);
    return data;
  } else {
  // If the API call fails, you can handle the error accordingly
  throw Exception('Failed to fetch predictions');
  }
}