# Day 0

we are going to explore the traditional thing everyone has to do when starting out a language - `hello world`.

## setting up an helloWorld project

when we set up an application, it is normally a stateless widget.

## hot reload

this is a feature in flutter that allows you to quickly see the changes you make in your application without having to completely restart the app or loose it's current state

when you use hot reload flutter framework compiles only the changed parts of your code and inject them into your running application without rebuilding the entire app from scratch.

## build

in flutter, the build method is a fundamental part of the widget lifecycle and is crucial in creating the user interface of your application.

the `build` method is defined within a class that extends either `statelessWidget` or `statefulWidget`.

these two classes are the building block for our UI components.

### stateless Widget

A stateless widget  represents a widget whose internal state doesn't change once it is built.

```dart
class MyStatelessWidget extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Container (
            child: Text("Hello Multiverse")
        )
    }
}
```

`@override` - this is used to indicate that a method in a subclass is intended to override a method with the same name in the super class.

it is a way to ensure that you're properly ovveriding a method and not accidentally creating a new method.

in the above code, we are overriding a build method from `statelessWidget` class.

`BuildContext` - it is a class in Flutter that represents the context in which a widget is currently being built.

it is a crucial part of the flutter architecture as it provides important information about the widget tree and allow widgets to interact with the framework and other widgets.

## stateful widget

A stateful widget that can change its internal state. The `build` method for this widget is always called whenever the state changes

the `build` method typically rebuilds the widget based on the updated state.

```dart
class MyStatefulWidget extends StatelessWidget{
    @override
    _MyStatefulWidgetState createSate() => _MyStatefulWidgetState()
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>{
    @override
    Widget build(BuildContext context){
        return Container (
            child: Text('Hello World')
        )
    }
}
```

### `_MyStatefulWidgetState createState() => _MyStatefulWidgetState();`

this is an implementation of `createState()` method within the MyStatefulWidget class. this method is responsible for creating an instance.

in Flutter, when a `StatefulWidget` is created. The `createState` method is automatically called. This method should return an instance of the state class that corresponds to the widget.

The state class is responsible for maintaining the mutable state and defining the `build` method that describes how the widget how to widget should be displayed based on that state.
