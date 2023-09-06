# metadata

dart provides two kinds of metadata:

1. `@override` - it is used to indicate that a class is intentionally overriding a member of its superclass
2. `@depreciated` - it is used to warn us that whatever you are using is probably not wise right now because it would be depericiated soon

we can always creare our own annotations:

```dart
class MyAnotation {
    final String anotate;

    const MyAnotation(this.anotate)
}
```

so to use it you:

```dart
@MyAnotation("this is my function")
```

the following can always be anotated:

1. library
2. class
3. typedef
4. type parameter
5. constructor
6. factory
7. function 
8. field
9. parameter
10. variable declaration
11. import and export directives


