class Player {
  final String name;
  final String position;
  final String team;
  final String id;

  Player({required this.id, required this.name,required this.position, required this.team});

  factory Player.fromMap(Map<String, dynamic> map){
    return Player(id: map["id"]?? '', name: map['name'] ?? '', position: map['position']?? '', team: map['team']?? '');
  }
}