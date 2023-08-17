import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = "https://jsonplaceholder.typicode.com/todos/";
  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('$baseUrl/1'));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('failed to load data');
    }
  }
}
