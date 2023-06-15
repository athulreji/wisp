import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:wisp/api/companies.dart';
import 'package:wisp/models/company.dart';

Future fetchAndStoreCompanies() async {
  final data = await fetchCompaniesData();
  final prefs = await SharedPreferences.getInstance();
  final encodedList = data.map((item) => item.toJson()).toList();
  final jsonString = json.encode(encodedList);
  await prefs.setString('companies', jsonString);
}

Future<List> getCompanies() async {
  final prefs = await SharedPreferences.getInstance();
  final jsonString = prefs.getString('companies');

  if (jsonString != null) {
    final decodedList = json.decode(jsonString) as List<dynamic>;
    final myList = decodedList.map((item) => Company.fromJson(item)).toList();
    return myList;
  } else {
    return [];
  }
}
