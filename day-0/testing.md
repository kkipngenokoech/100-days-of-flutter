# TESTING

in Flutter there are three main kinds of automated testing:

1. unit testing
2. Widget testing
3. Integration testing

## unit testing

this is the type of test used to test a unit of code. this small unit could be:

1. a function
2. a class
3. a method

to perform such kind of tests:

1. import `pubpec.yaml` into your testing framework:

   ```dart
   dev_dependencies:
    flutter_test:
        sdk: flutter
   ```

2. write your test codes in `test/unit_test.dart`:

    ```dart
    import 'package:test/test.dart';
    void main() {
        test('the answer to the question', () {
            var answer = 42;
            expect(answer, 42);
        });
    }
    ```

3. Run the test by running flutter test `test/unit_test.dart` in the project folder. Alternatively, you can run `flutter test` to run all the tests.

## Widget Testing

this is also known as component testing.

## Integration Testing

This type of testing is used for testing the whole application or a big part of the application. 

Integration testing can be used to verify that the app does everything as expected or to test the performance of the code.

Integration tests are run on a real device or an emulator
