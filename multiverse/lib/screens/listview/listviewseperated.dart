import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "List view Separated";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('item $index'),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            itemCount: 25),
      ),
    );
  }
}
