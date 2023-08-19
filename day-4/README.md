# configurations to get data from firebase

1. add cloud_firestore as a pubspec.yaml dependecy
2. register your application in firebase project
3. move the google-services.json file to`/app` level directory
4. there are lines you are supposed to add to your build.gradle's android level directory, it is `classpath "com.google gms:google-services:4.3.15"`. Add this to the dependency clause.
5. then in your app's level build.gradle file add this two lines:
    1. `apply plugin: 'com.google.gms.google-services'` at the tail end of your file
    2. any other firestore/firebase functionalities you want to use add it to the dependecies section just right above the line you have just added.
    3. run `flutter run` to sync the two files for you, it should build successfully, if you ran into android version mismatch error look for minsdkversion in the file and edit it to the one your console is requesting for
6. initialize the firebase in your main.dart. this is how to do it:

```dart
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
```

with that you are free to start fetching and writing data from your flutter app to your firebase.
