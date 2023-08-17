import 'package:multiverse/api/api_service.dart';

import '../lib/models/todo_model.dart';
import 'dart:convert';

void main() async {
  final apiService = ApiService();
  try {
    final fetchData = await apiService.fetchData();
    print("Fetched data: $fetchData");

    // final parsedData = TodoModel.fromJson(json.decode(fetchData));
    // print("Parse data: ${parsedData.userId}");
  } catch (error) {
    print("error: $error");
  }
}
