#  STYLING WIDGETS IN FLUTTER

Flutter has a rich system for styling widgets in various ways, and being widget-oriented at its core, you do this, largely at least, through widgets that are specifically designed to style other widgets

## Theme and ThemeData

The Theme widget applies a theme to its child widgets. This includes colors and typographic settings.

Where the  Theme widget comes into play is typically when you want to override that application-­ level theme for just some subset of widgets. Alternatively, you could just wrap the entire application’s widget tree in a Theme widget and apply the theme that way

there are two choices when dealing with a theme widget:

1. extending the parent theme
2. building a new one

Extending:

```dart
Theme(
  data : Theme.of(context).copyWith(accentColor : Colors.red),
  child : /* Your widget tree to be styled with this theme */
)
```

The Theme.of() method is basically how you say “hey, Flutter, what’s the nearest theme to this widget?” Whatever parent widget has a theme is the theme it will find

To create a whole new Theme is arguably even easier:

```dart
Theme(
  data : ThemeData( accentColor : Colors.red ),
  child : /* Your widget tree to be styled with this theme */
);
```

Now, once you have the Theme widget defined, you still must make use of it in individual widgets. But, with the Theme in place, it makes it easy:

```dart
Theme (
  data : ThemeData( accentColor : Colors.red ),
  child : Container(
    color : Theme.of(context).accentColor,
    child : Text("Text with a background color,"
      style : Theme.of(context).textTheme.title,
    )
  )
)
```

## Opacity

The Opacity widget is a simple one: it makes its child transparent by a specified amount.
As a simple example, just replace the second Text in the example from earlier with this:

```dart
Opacity(opacity: .25, child : Text("Faded") )
```

## Transform

The Transform widget applies some sort of geometric transformation on its child element.

## ANIMATIONS & TRANSITIONS

### AnimatedContainer

For relatively simple animations, the AnimatedContainer widget is perfect. It gradually changes its values over a defined period of time.

It does this automatically – you just tell it what the starting values are, then change to the new values and it will animate (or tween) between them as required

## AnimatedCrossFade

The AnimatedCrossFade widget is a widget specifically designed to cross-fade between two elements. A cross-fade is when one element fades out while another fades in at the same location

## AnimatedDefaultTextStyle

For animating text, AnimatedDefaultTextStyle is a good choice. It works very similarly to AnimatedContainer and AnimatedCrossFade

