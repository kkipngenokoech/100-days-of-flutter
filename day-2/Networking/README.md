# NETWORKING

networking is the backbone of any app. Flutter libraries makes it easier for developers to build apps with networking.

some of the most commonly used packages/libraries include:

1. HTTP
2. device APIs - i.e device_info
3. geolocator
4. third party platforms (i.e firebase)

## Adding existing packages to your app

let's say we have settled for HTTP package. So we need to add it to our application, here are the steps to do:

1. create a dependency - locate `pubspec.yaml` and add "http:" under dependecies.
   - All packages have a version number, specified in their pubspec.yaml file. The current version of the package is displayed next to the package name. When you mention Plugin_Name_1:, it is interpreted as Plugin_Name_1: any. This indicates that any version of the package may be used. It is advisable to use a specific version to ensure that the app doesn't break when it is updated.
2. install the package where the dependency has already been added, you do that by running `flutter packages get` command or the `flutter pub get`.
3. Include the corresponding import statement in your dart code, i.e `import packages:http/http.dart`
4. stop and restart your application just to confirm everything is working successfully.

## Upgrading existing packages

to upgrade existing packages you use:

- flutter upgrade - (Using this command, Flutter will retrieve the highest available version of the package. In case you have specified range constraint in pubspec.yaml, it will fetch the update as per the specification of the constraint)

## Fetching data from the server

when fetching data in the server you:

1. include the HTTP package and make a network request
2. convert the response into a custom Dart object.
3. Fetch the data and display it using the flutter

