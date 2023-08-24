# LAYOUT

## MaterialApp, Scaffold, Center, Row, Column, Expanded, Align, Text

layout in flutter comes down to a grid structure, which means rows and columns.

## MaterialApp

this is a design created by google that aims to create a consistent and visually pleasing user experience across different platforms and devices.

```dart
class .....
return materialApp(
    // your code lives here
)
```

material app can be used to setup core items like:

1. title
2. theme
3. home (initial route of the app)

### card

A card widget is a material design that is essentially just a box with rounded corners amd a slight drop shadow around the content

The Card widget doesn’t have a ton of properties, but some of the most interesting include color, which allows you to set the background color of the card; elevation, which will enable you to set the size of the shadow; and shape, which allows you to alter the rounded corners of the Card (to make them more or less rounded).

### drawer

The Drawer widget is most usually given as the value to the drawer property of a Scaffold widget, although it doesn’t have to be. 

This widget is a Material design panel that slides in horizontally from the left to provide a way for the user to activate app functionality or navigate through the app and which is hidden until called upon.

this is the sidebar menu.

You pass a drawer to Drawer() and inside the Drawer() wrapper you pass to the child property a column witht the children sub-items you want to be on the side menu.


### Divider()

The Divider widget is a straightforward one that displays a one device pixel thick horizontal line, with a little bit of padding on either side

### constrainedBox()

this widget is used to impose constrains on a card or a widget, you wrap a widget with it and impose constrains i.e

```dart
ConstrainedBox(
    constraints: BoxConstraints(minWidth: 200.0),
    child : theWidgetNow()
)
```

The BoxConstraints class offers some properties for defining a constraint, with minWidth, minHeight, maxWidth, and maxHeight being probably the most commonly used.

### fittedBox()

Next up is the FittedBox, which scales and positions its child within itself according to a fit property.

```dart
ConstrainedBox(constraints : BoxConstraints(minWidth: 200.0), child :
FittedBox(fit: BoxFit.fill, child : Text("Child2") ) )
```

### rotatedBox()

Similarly, the RotatedBox gives us a way to rotate its child that might be in a form that is more rational to you:

```dart
RotatedBox(quarterTurns : 3, child : Text("Child2") )
```
The quarterTurns property is the number of clockwise quarter turns to rotate the child by. So, if you need quarter turns, this widget is perfect, but if you need arbitrary degrees then you’ll need to deal with Transform.

### sizedBox()

Finally, the SizedBox widget forces its child to have a specific width and height:

```dart
SizedBox(width : 200, height : 400, child : Text("Child2") )
```

### full code:

```dart
import 'package:flutter/material.dart';

class AppointmentWidgetScreen extends StatelessWidget {
  const AppointmentWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:  ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 60, minWidth: 60),
          child: const FittedBox(
            fit: BoxFit.fill,
            child: Card(
              elevation: 4,
              color: Colors.orange,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child:Text('Dr appointments'),              
                  )
                ],
              )
            )

          )
        )
      ),
    );
  }
}
```

