# DEBUGGING AN APPLICATION

to understand how to debug a flutter application you need to understand the following concepts:

1. Dart analyzer
2. Dart observatory
3. Visual debugging

## Dart Analyzer

this tool analyzer checks our dart code for errors.  It is essentially a linter for Dart

incase you want to add some additional linter you can always create a file named `analysis_options.yaml` and specify some additional options that will raise errors/warnings and will help you write good clean flutter code.

## Dart Observatory

this is a tool dedicated to debugging and analyzing flutter apps. You can put a breakpoint and run the app step by step.

when we run our application, there will be a line in the terminal `Observatory listening on http://127.0.0.1:8100/`

you can always navigate to this url and do a couple of things with your application.

## Visual Debugging

this is needed to debug the layout of our application, to align widgets in a particular way, adjust margins and spaces between widgets. This will need visual Debugging.

To debug in such instances, enable the:

(i) debugPaintSize option. You do that in main function:

```dart
void main (){
    debugPaintSizeEnabled = true;
    runApp(MyApp())
}
```

this will color every widget and you can visually see it layout.

This is a very powerful feature and can help you with visual debugging, especially if you
are not that "pixel perfect" frontend developer.

(ii) debugShowMaterialGrid to true! Your application will be overlayered by the material pixel grid—which is perfect to study the app layout

(iii) howPerformanceOverlay. By setting it to true, you will see the performance of your application displayed in the form of a graph on the upper part of the graph. There will be two graphs displayed on your screen

## flutter widget inspector

it is found in the IDEs
