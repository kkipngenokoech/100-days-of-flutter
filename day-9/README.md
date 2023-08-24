# ALERTS, DIALOGS, POPUPS, MESSAGES

I worked with alerts in flutter. Here is athread [link](https://twitter.com/Kkipngeno_koech/status/1694656003030028672?s=20) for the same

the repo i used is [here](https://github.com/kkipngenokoech/FlutterBook)

There are several ways to interact with the user. they include:

## Tooltip

everyone knows what a tooltip is, you hover on top of some button and it shows  right there some extra information.

to apply a tooltip, you wrap the target widget with a tooltip:

```dart
Tooltip(
    // it has the following children.
    message:
    child
)
```

some widgets have a tooltip property that automatically wraps the widget in a Tooltip, but you can do so manually if not.

Usually, a Tooltip is displayed below the widget it wraps, but you can set its preferBelow property to false to reverse that (and it will automatically do so if there isn’t enough room to display it below). You can also adjust the verticalOffset property to determine the distance between the Tooltip and its target widget.

## simpleDialog (cupertinoDialog)

this is the dialog that gives users with a couple of choices to choose from.

```dart
 import "package:flutter/material.dart";
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home : Scaffold(body : Home()));
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    Future _showIt() async {
      switch (await showDialog(
        context : inContext,
        builder : (BuildContext inContext) {
          return SimpleDialog(
            title : Text("What's your favorite food?"),
            children : [
              SimpleDialogOption(
                onPressed : () {
                  Navigator.pop(inContext, "brocolli");
                },
                child : Text("Brocolli")
              ),
              SimpleDialogOption(
                onPressed : () {
                  Navigator.pop(inContext, "steak");
                },
                child : Text("Steak")
              )
            ]
          );
        }
      )) {
        case "brocolli": print("Brocolli"); break;
        case "steak": print("Steak"); break;
      }
    }
    return Scaffold(
      body : Center(
        child : RaisedButton(
          child : Text("Show it"),
          onPressed : _showIt
        )
      )
    );
  }
}
```

## AlertDialog / cupertinoAlertDialog

The AlertDialog is much like the SimpleDialog except that it is meant for urgent situations that require their immediate attention and typically don’t require more than a binary choice of some sort (or no choice at all)

## snackBar

A SnackBar is a lightweight message component that shows a transient message at the bottom of the screen for some period of time, and optionally with a single action, the user can tap, most usually to dismiss the SnackBar.  it has the following properties:

1. backgroundColor
2. duration
3. content
4. optional action

## bottomSheet (CupertinoActionSheet)

Bottom sheets, as provided by the BottomSheet widget (and its iOS counterpart CupertinoActionSheet) are widgets displayed at the bottom of the screen to show additional content to the user and/or ask them for a choice. It’s sort of a cross between a SimpleDialog and a SnackBar in a sense

