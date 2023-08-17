// TODO Implement this library.

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:multiverse/models/todo_model.dart';


class ApiService {
  static const baseUrl = "https://jsonplaceholder.typicode.com/todos/";
  Future<TodoModel> fetchData() async {
    final response = await http.get(Uri.parse('$baseUrl/1'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      return TodoModel.fromJson(responseData);
    } else {
      throw Exception('failed to load data');
    }
  }
}
