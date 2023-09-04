# FLUTTER

It is made up of four main components:

1. dart platform
2. flutter engine
3. interface over the native sdks for both platforms which is called foundation library (this helps us with: you don't actually need to know how to call a native api to launch a camera in both ios and android, you just need to know how to do so in flutter)
4. widgets

## widgets

they are chunks of ui - a widget is a chunk of code

buttons, lists, images, text form fields, are all widgets.

paddings, text displayed on a screen, theme of the app are all still widgets.

so essentially what you do in flutter, is have an heirachy of widgets, just nesting each other left right and center.

all widgets are dart classes. and they have a single concrete requirement: they must supply a build() method.

this method returns other widgets, exception to widgets like 'Text()' which returns a string.

A widget is just a plain old dart class

widgets majorly extends either of the two classes:

1. stateless widget - this is a widget that has no state - it never changes.
2. stateful widget

stateful widgets are automatically re-rendered when their state changes unlike stateless widget.

when a state of a stateful widget changes, regardless of what causes the change, some lifecyles events are fired.

### stateless widget

```dart
class MyStatelessWidget extends StatelessWidget {
    Widget build(inContext){
        return new Text(" i am a stateless widget");
    }
}
```

### stateful widgets

these are those widgets with some sorta state in themselves. they include:

1. Checkbox
2. Slider
3. TextField

when coding out stateful widgets, you need to write two classes:

1. a stateful widget class itself
2. a state class to go along with it


```dart
class LikesWidget extends StatefulWidget {
    @override
    LikesWidgetState createState() => LikesWidgetState();
}

class LikesWidgetState extends State<LikesWidget> {
    @override
    widget (BuildContext inContext){

    }
}
```

Think of it this way: both types of widgets can in a sense have state, but only a stateful widget has state that Flutter it aware of and even manages to some extent.

Therefore, only a stateful widget can be automatically re-rendered when appropriate, all controlled by the Flutter framework itself, rather than you having to do anything manually in your code.

