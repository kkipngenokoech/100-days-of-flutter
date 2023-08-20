# NAVIGATIONS

in reactjs I normally define my routes in my app.js. Ideally did more or less the same thing here. I defined a list of screens in my main.dart:

## Step 1

```dart
final List<Widget> _screens = [
    ListViewWidget(),
    FirebaseDataWidgetScreen(),
    ListViewBuilderWidget(),
    ListViewSeparatedWidget(),
    TodoModelWidget(),
  ];

```

the code i shared above is more or less a list of items. This being a list of screens. this are the different screens, I actually want to route to.

then when you have your list declared. Actually it is placed just right above the `@override` for the widget class:

```dart
...
class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    ListViewWidget(),
    FirebaseDataWidgetScreen(),
    ListViewBuilderWidget(),
    ListViewSeparatedWidget(),
    TodoModelWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    ....
```

## Step 2

now you want to send this routes to the bottomnavbar, in the order in which the above screens a put in the list, that's their index, of course from 0-5 or something.

this is how you display icons that when tapped route to above screens in the list.

```dart
 bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.memory), label: 'firebase'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: "List view builder"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined), label: 'list builder'),
            BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'todo')
          ],
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
        ),
    );
```

the selectedItemColor property is for the current active index. and then unselectedItemColor is for the other icons.

The special point I want to point out is the function in the onTap, this is what changes the value of the _currentIndex, FYI alongside declarations of lists above we also need to declare a const _currentIndex to help us in routing from one page to another.

## Thought process

when you click on/tap an icon, the value of the current index changes, the screen being displayed on the body changes:

```dart
....
    body: _screens[_index]
....
```

with that you have your navigation routes up and running.
