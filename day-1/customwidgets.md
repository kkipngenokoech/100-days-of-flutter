# Creating custom widgets

There are two types of widgets that you can use to create your own custom widgets in flutter.

1. stateless widget
2. stateful widget

## Stateless widgets

these are those widgets that remain the same even as the user interacts with them. they have no state, so they cannot change their internal state. They can only react to higher widgets changes

this is a sample code on how to build a stateless widget:

```dart
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: "Multiverse",
            theme: ThemeData(
                primarySwatch: colors.blue
            ),
            home: MyHomePage(title: 'multiverse gates')
        )
    }
}
```

## Stateful Widgets

these are dynamic components that have an internal state to manage. It reacts to state changes and change accordingly.

the state is stored in a state object.

sample code:

```dart
class MyHomePage extends StatefulWidget {
    MyHomePage ({Key key, this.title}) : super(key: key);
    final string title;

    @override
    _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    bool value = false;
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            backgroundColor: value ? Colors.black : Colors.white,
            appBar: new AppBar(
                title: new Text(widget.title),
            ),
            body: Center(
                child: Switch(
                    value: value,
                    onChanged: (v) {
                        setState(() {
                            value = v;
                        });
                    }),
                ),
        );
    }
}
```
