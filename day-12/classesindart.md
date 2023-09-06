# classes in dart

## assertions

```dart
assert(firstName == null)
```

assert keyword is used to check boolean conditions, you can also tag along messages to the assertion:

```dart
assert(firstName == null, "first name is null")
```

## asynchrony

you know, the old word - `async`, it is everywhere. in all languages

there are two major classes in dart that makes use of async:

1. Future
2. Stream

and as you already know, it is accompanied by two words: - you cannot experience async without the await keyword. Any other time you are calling a function that returns a future, you must use await. Your code wll always stop  this line until the function is complete, it can though proceed with other activities as it waits for the future to be returned.

the async function itself has to be marked with async right before the curly braces:

```dart
Future awaitAfutureFunction() async {
    
}
```
