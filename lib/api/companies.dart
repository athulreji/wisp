import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:wisp/models/company.dart';

Future<List<dynamic>> fetchCompaniesData() async {
  final url = Uri.parse('https://wisp-api.azurewebsites.net/api/companies?code=JHG_vrPsSdwrhO4ZfJxfIni4tyi2okqQRAcx7FdRAUKsAzFuZy4e8A==');
 
  final response = await http.get(url);
  
  if (response.statusCode == 200) {
    final List jsonData = json.decode(response.body);
    final data = jsonData
      .map<Company>((company) => Company.fromJson(company))
      .toList();
    return data;
  } else {
  // If the API call fails, you can handle the error accordingly
  throw Exception('Failed to fetch companies');
  }
}
