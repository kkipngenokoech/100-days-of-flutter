# MODELS AND VIEWS

models are what holds our data  - there are tge classes that deals with the data of an app, they are classes which are concerned with maintainiing data for for your application

views are what present the data of an application to on a screen, these are concerned with drawing your interface.

in one's lib directory, he should create a models and views subdirectory.

## implemenation of the models & views subdirectory.

1. the best place to always start is the data layer

```dart
class TodoModel {
    final String note;
    final String time;

    TodoModel({required this.note, required this.time});
}
```

to handle all your models exports, you can create another dart file, that handles exports only:

```dart
export 'todo.dart';
export 'tasks.dart';
```


