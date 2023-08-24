# NAVIGATIONS

## tabBar Views

A TabBarView is essentially a stack of screens (or views, if you will) where only one is visible at a time, and the user can move between them. 

The way one becomes visible is by user interaction with a TabBar. They can click the icon for one of the tabs or swipe between them. There is usually some sort of animation between the views, a slide for example.

you pass the DefaultTabController into the home (initial route), controller. Then in the body you pass a  TabBarView then call the screens in the children list. azzn:

```dart
 return MaterialApp(
      home : DefaultTabController(
        length : 3,
        child : Scaffold(
          appBar : AppBar(title : Text("Flutter Playground"),
            bottom : TabBar(
              tabs : [
                Tab(icon : Icon(Icons.announcement)),
                Tab(icon : Icon(Icons.cake)),
                Tab(icon : Icon(Icons.cloud))
              ]
            )
          ),
          body : TabBarView(
            children : [
              Center(child : Text("Announcements")),
              Center(child : Text("Birthdays")),
              Center(child : Text("Data"))
            ]
          )
        )
    )
)
```

you have to tell the TabController how many tabs there are via the length property. After that, you need to describe each tab for the TabController, and that’s done by giving it an array of tabs where each item is a Tab widget.

Here, we just specify an icon for each.

Once the tabs themselves are defined, we then must tell the TabController what the content for each tab is, and that’s done by providing a TabBarView widget as the value of the body property. Each element in the children list can be as complex a widget tree as you need.

## stepper

stepper widget is another navigation widget. this is normally used to walk the user through a defined sequence of events, i.e checkout of products and placement of orders.

