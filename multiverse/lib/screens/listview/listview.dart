import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Travel utilities";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text("BookMarked favorite locations"),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text("Expense Tracker")
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text("photo Album"),
            ),
            ListTile(
              leading: Icon(Icons.add_location),
              title: Text("Places to visit nearby"),
            ),
            ListTile(
              leading: Icon(Icons.audiotrack),
              title: Text("Podcast"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Emergency contacts"),
            )
          ],
        ),
      ),
    );
  }
}
