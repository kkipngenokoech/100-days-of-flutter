import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:multiverse/api/firestore_service.dart';
import 'package:multiverse/models/player_model.dart';

class FirebaseDataWidgetScreen extends StatelessWidget {
  const FirebaseDataWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firestore Data"),
      ),
      body:  FutureBuilder(
        future: FirestoreService.fetchData(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError){
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          List<Player> players = snapshot.data as List<Player>;
          return ListView.builder(
            itemCount: players.length,
            itemBuilder: (context, index){
              Player player = players[index];
              return Center(
                child: ListTile(
                  leading: SizedBox(
                    width: 56,
                    height: 56,
                    child:  Image(
                      image: NetworkImageWithRetry(player.imageUrl),
                    ),
                  ),
                  title: Text(player.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(player.team),
                      Text('Position: ${player.position}'),
                    ]
                )
                )
              );
                
            },
          );
        })
      ),
    );
  }
}