import 'package:flutter/material.dart';
import 'package:multiverse/api/api_service.dart';
import 'package:multiverse/models/todo_model.dart';

class TodoModelWidget extends StatefulWidget {
  const TodoModelWidget({super.key});

  @override
  State<TodoModelWidget> createState() => _TodoModelWidgetState();
}

class _TodoModelWidgetState extends State<TodoModelWidget> {
  ApiService _apiService = ApiService();
  TodoModel? _todoModel;
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      final todoModel = await _apiService.fetchData();
      setState(() {
        _todoModel = todoModel;
        _isLoading = false;
      });
    } catch (error) {
      setState(() {
        _todoModel = null;
        _isLoading = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : _todoModel != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Fetched data include:"),
                      const SizedBox(height: 10),
                      Text("User Id: ${_todoModel!.userId}"),
                      Text("ID: ${_todoModel!.id}"),
                      Text("Title: ${_todoModel!.title}"),
                      Text("Completed: ${_todoModel!.completed}")
                    ],
                  )
                : const Text("Error: failed to load the data"),
      ),
    );
  }
}
