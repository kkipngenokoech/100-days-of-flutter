import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FcmTokenGenerator extends StatefulWidget {
  const FcmTokenGenerator({super.key});

  @override
  State<FcmTokenGenerator> createState() => _FcmTokenGeneratorState();
}

class _FcmTokenGeneratorState extends State<FcmTokenGenerator> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  String _token = 'No Token Yet';

  @override
  void initState() {
    super.initState();
    _retrieveFCMToken();
  }

  void _retrieveFCMToken() async {
    String? token = await _firebaseMessaging.getToken();
    setState(() {
      _token = token ?? "No token retrieved";
    });
    print('FCM Token: $_token');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Generating FCM tokens"),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('FCM token:', style: TextStyle(fontSize: 18),),
            const SizedBox(height: 8,),
            Text(_token, style: const TextStyle(fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
