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


## NAVIGATOR CLASS

pushing and popping routes is the bread and butter of routing in flutter. Navigator class lays its children out in a stack nature.

it operates in a last in first out principle. we need to manage this stack and we can do that in the following ways:

1. pop
2. popUntil
3. canPop
4. push
5. pushNamed
6. popAndPushNamed
7. replace
8. pushAndRemoveUntil

pushing named routes, returns a future
