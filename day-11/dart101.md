# DART 101

## comments

single line comments are done using `//` character sequence.

multi-line comments are done using `/**/` - anything between those two lines are assumed/ignored

documentation comments are designed to produce useful verbiage when documentation generation tooling is used on dart code, we use `?**...*/`

when commenting and then you use brackets, it is taken to reference - `ass, method, field, top-level variable, function, or parameter, resolved to the lexical scope of the documented program element`

## variables

everything in dart is an object.Numbers, functions, methods and even null are all objects.

### declaration of variables

to declare a variable, you use `var NameOfVariable` - if you don't define the variable, its default value will always be null.

```dart
var nullValue; // this variable value is null
var number10  = 10; // the value of [number10] is 10
```

in dart, if you don't explicitly tell it the data type, it can always infer it from the value it has been passed to it.

if you have a variable that is doomed to constantly change its data type, you can always use:

```dart
dynamic x
```

this means that it can always change from integer, to string, to boolean, or to whichever other datatype.

the other option used in defining variable is object. `Object X;`

## const and final Values

both the const and final keywords define a variable as being constant. a final immutable.

```dart
const X  = "final string";
final X = 'another final string';
```

the difference between const and final, is that const remain constant at compile time - the value doesn't depend on anything at runtime, for final you can always set the value at runtime

## data types

dart is a strongly typed language, the data type are optional though.

they include:

1. String
2. Numeric Values
3. boolean value
4. list
5. map - sometimes called dictionary or hash
6. set -  this unordered list, you can't retrieve elements by index. You use method `contains()` and `containsAll()` instead.

## maps

there are several ways of creating variables with data type map:

```dart
// 1. using curly braces
var players = {
    "chelsea": "Nicholas Jackson",
    "Man United": "Bruno Fernadez"
}

// 2. another way is using Map()

var teams  = Map()
teams["chelse"] = "Enzo Fernadez";
teams["totetham"] = "Heung Min Son";

// 3. another way is using Map<String int>();
var leagues = Map<String int>();
leagues["EPL"] = 1;
leagues["La liga"] = 2;
```

## enumarations

## loops

the familar loops you hae always used:

1. for
2. for in
3. switch
4. if

## classes

dart is object oriented - that means we are dealing with classes and objects.

defining a class in dart is simple:

```dart
class Hero {

}
```

### instance variables

these are the members/properties of a class, to define them is really simple:

```dart
class SuperHero {
    String name;
}
```

Any instance variable that you don’t initialize with a value begins with a value of null. Dart will automatically generate a getter (accessor) method for each variable, and it will also generate a setter (mutator) for any non-final variables.

Instance variables and methods can be marked as static as well, which means you can use them without instantiating the class

## methods

this are class member functions, called methods:

```dart
class Hero {
    String GetSuperHero(){} 
}
```

## constructors

constructors are great methods that are used to create and initialize objects in a class. If you don't define a constructor for your class, dart will automatically define one for you with no parameters.

constructors help you to set the values of variables, or members of your class at first instance.

dart way of setting constructors is:

```dart
class Hero {
    String firstName;
    String superPower;

    Hero ({this.firstName, this.superPower})
}
```
