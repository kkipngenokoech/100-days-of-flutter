import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'List View index';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("This is position $index"),
            );
          },
        ),
      ),
    );
  }
}
