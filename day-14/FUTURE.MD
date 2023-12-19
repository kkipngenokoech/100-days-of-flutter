# FUTURE

in flutter, future and streams are the main tools for dealing with asynchronous code/ programming

while future represents a single value that will be delivered at a later time in the future, Stream is a set of values that can be 

future is the foundational class for all dart async programming

futures are then-able;

```dart
myfuturemethod().then((returnValue){

})
```

this means it takes a callback that executes when the future returns a value

it is asycnhromous because the rest of the code will continue executing as we wait for the future to return a future.

## Async/Await keywords

you can mark any function async, you tell your code - Hey function, if you see await keyword anywhere, just pause right here and wait for me to get you whatever you want before we proced

these two keywords turns asynchronous code to synchronous code

## catching errors with future

sometimes we are waiting for data from an api that is already down, that means it will return an error that is not from what we expected. you don't want your app to crash because it expecting data that it won't receive.

You rather want your application to fail gracefully -  and for it fail gracefully, you can catch errors in two ways:

1. catchError

```dart
MyFutureFunction().then().catchError()
```

2. Catching errors using try/catch blocks:

```dart
try{
    MyFutureFunction().then()
}
catch (error){
    print(error)
}
```

the code in the try block will run no matter what. If it completes success-
fully (that is, without any errors), the compiler will skip the catch block and just keep
going with the other code as expected. The catch block is a fail-safe that will be exe-
cuted if there is an error in the try block

## SINKS AND STREAMS

