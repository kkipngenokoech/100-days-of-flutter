# WIDGETS

everything in flutter is a widget

this is how we are going to learn about widgets in flutter:

1. Widgets Catalog
2. Creating Widgets
3. Routing and Navigation

## Widget Catalog

in ReactJS we are normally advised to start with pre-built components found in frameworks like:

1. Bootstrap
2. ReactStrap
3. Material ui

and so forth and so forth....

here in flutter there are widgets that the flutter team has already given you an headstart with, they are found in this [website](https:/​/flutter.​io/​widgets/) or this [widget catalog](https://docs.flutter.dev/ui/widgets).

the most common widgets you will encounter though includes:

1. Container
2. Image
3. Text
4. Icon
5. RaisedButton
6. Scaffold
7. Appbar
8. Placeholder
9. Row
10. Column
11. ListView

### Container

A container makes it possible to apply a variety of features, for example, background color, aligning the child within the container, setting some constraints to the size of the child, and applying some decoration or transformation property to the child for example, you can rotate a widget.

sample code:

```dart
Center (
    child: Container(
        decoration: BoxDecoration(border: Border.all())
        height: 200.0,
        width: 200.0
    )
)
```

### Image

if you want to display images in your code, you use image widget.

sample code:

```dart
Center (
    child: Container(
        height: 200.0,
        width: 200.0,
        child (
            Image.network("url for your image goes here")
        )
    )
)
```

the image widget supports the following formats:

1. JPEG
2. PNG
3. GIF
4. Animated GIF
5. WebP
6. Animated WebP
7. BMP
8. WBMP

### Text

this is used to display text on the screen

sample code:

```dart
Center(
    child: Container (
        height: 200.0,
        width: 200.0,
        child: Text("This is a sample text, ooh and welcome to the multiverse")
    )
)
```

### Icon

this is used to draw icons using the font described in IconData.

sample code:

```dart
Center (
    child: Container (
        height: 200.0,
        width: 200.0,
        child: Icon(Icons.flag)
    )
)
```

Just like the text widget, we can add interactivity with the Icon widget too. To do that, we
can use GestureDetector.

### RaisedButton

This widget is used to display a single Elevated button. It increases elevation onPress()

sample code:

```dart
Center (
    child: Container(
        height: 200.0,
        width: 200.0,
        child: RaisedButton (
            onPressed: () => print("on Pressed"),
            child: Text("Button"),
            color: Colors.blue
        )
    )
)
```

### Scaffold

this is the basic layout structure based on material design. If you use material design, every screen of our app will have a scaffold at its base.

This scaffold is used for:

1. showing drawers
2. showing snackbars
3. showing bottom sheets
4. floating action buttons

sample code:

```dart
Center (
    child: Container (
        height: 200.0,
        width: 200.0,
        child: RaisedButton (
            onPressed: (){
                Scaffold.of(context).showSnackBar (SnackBar(
                    content: Text("Hello!"),
                ))
            },
            child:Text("Button"),
            color: Colors.blue
        )
    )
)
```

### Appbar

Appbar is used as property of scaffold. It consists of a toolbar and potentially other widgets.

### PlaceHolder

A placeholder widget is used in place of another widget. It draws a box that will be replaced with other widgets later.

sample code:

```dart
Center (
    child: Container (
        height: 200.0,
        width: 200.0,
        child: PlaceHolder()
    )
)
```

### Column

this component/ widget displays its components in a vertical array.

sample code:

```dart
Center (
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <widget>[
            widget1,
            widget2
        ]
    )
)
```

### Row

this widget aligns its content horizontally

same sample code as column above, you just replace the column with the Row.

### ListView

with rows and column widgets, it has no scrolling events, that is what ListView widget was designed to solve.

ListView takes three constructors:

1. The default takes a list of widgets in its children property. This is a good choice for small lists because to build it, the list will process every child.
2. ListView.builder takes an indexed builder to build the children on demand. This is the choice to pick if you have a large number of children, because every time the list processes only the visible children.
3. ListView.custom takes SliverChildDelegate, which provides the ability to
customize more aspects of ListView.

