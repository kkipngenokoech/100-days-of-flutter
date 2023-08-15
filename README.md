# 100-days-of-flutter

Here is my flutter journey

flutter is an application framework developed by google for creating cross-platform mobile application.

## widgets

everything in flutter can be created using widgets. mention anything - they are all widgets:

1. orientation
2. layout
3. opacity
4. animation

everything from a simple button to an animation or gesture is done using widgets.

## books used

1. [guide](./resources/vdoc.pub_google-flutter-mobile-development-quick-start-guide%20(1).pdf) - [repo](https:/​/​github.com/​PacktPublishing/​Flutter-​Quick-​Start-​Guide/​tree/​master/​sample_​app)

## how to create a boilerplate for flutter project

1. you run the command `flutter create <name of your application>`
2. cd into the application you ceated
3. run the command `flutter run`

the entry point to our application is main function. Take a look at [hello world project](./day-0/hello_ultiverse/lib/main.dart). Here is a snippet of the code i want you to look at exactly:

```dart
import 'packages:flutter/material.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    // your code here
}

```

when a person/client or whichever tries to access our application, the entry point is the main function which in turns calls our MyApp class.

`runApp` task is to set up the flutter framework and run the selected application.

