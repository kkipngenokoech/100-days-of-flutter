# README

the are some side additional stuff that can help one in flutter development. they include:

1. Constrains in flutter
2. Introducing animation in flutter.
3. Using ListView  and scrolling widgets
4. introducing silvers

## Constrains in flutter

Every widget in Flutter is rendered by a RenderBox object that takes the constraints given by the parent and sizes itself within those constraints.

The difference between constraint and size is that the former gives a minimum and maximum of height and width, while the latter consists of a specific height and width.

there are three kinds of RenderBoxes:

1. those that try to be as big as possible
2. those that try to be the same size as their children
3. those that try to be a particular size

well, some widgets vary in size depending on the constructor arguments

A constraint can be tight. This means that it leaves no room for the RenderBox object to choose a size. An example is the App widget, which forces the view to be as big as the screen.

## Animations in flutter

in flutter, animation is divided into two categories:

1. Tween Animations (in-betweening) - here we define the start point, end point, the timeline, curve of time and speed
2. physical-based animations - these are made with an aim of representing the real world behavior.

### common patterns

animations that are likely to be found in majority of the apps:

1. Animated list/grid - a simple list animation when adding or removing an element
2. Shared element transition - used in navigating to pages that have common elements
3. staggered animation -  a sequence of animations that composes a bigger one

## ListView and Scrolling Widgets

flutter supports several scrolling widgets:

1. GridView
2. ListView
3. PageView

### ListView

linear list of scrollable items, it produces child items one after another.

there are various ways of using list view:

1. [ListTile](../multiverse/lib/screens/listview.dart)
2. [listview.builder]

#### ListView.builder

The ListView.builder constructor calls for IndexedWidgetBuilder, which helps developers to build children lists items on demand.

This is ideally used for a large or infinite number of visible children, unlike the ListView constructor. 

The other difference is that, while in the case of ListView, all the list items have to be defined first, in this case, the ListView.builder constructor will create runtimes for the list items as they are
scrolled onto the screen.

### Horizontal lists

the above lists gives you a touch for vertical list, all you need to do for horizontal lists is we call the ListView constructor, passing through a horizontal scrollDirection.

This simply overrides the default vertical direction. In this case, we use a Container widget, which is an easy-to-use widget that combines common painting, positioning, and sizing widgets.
