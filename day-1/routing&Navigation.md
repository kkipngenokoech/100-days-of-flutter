# Routing & Navigation

as alluded before, all screens are widgets. To navigate to a new route, we can use `navigator.push()` and pass an argument - the current context and a new MaterialPageRoute.

```dart
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


class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Second Screen"),
),
);
}
}
```

to navigate back, we use `Navigator.pop()`
