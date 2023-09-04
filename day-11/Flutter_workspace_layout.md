# APPLICATION STRUCTURE

when you run `flutter create`, these are the top level directories that the command will create for you:

1. Android
2. ios
3. lib
4. res
5. test

## Android

this contains android-specific code and resources - things like application icon, java code, Gradle configuration and transient resources

what we normally touch in this directory is the icons found in the `android/app/src/res`

in the `android/app/src/main` you wil find the androidManifest.xml where you can set Android-specific application properties

## ios

this contain codes, specific to IOS. the critical content is found in this directory: `ios/Runner/Assets.xcassets`. your apps specific icons are found in this directory.

and in the `ios/Runner` , there is Info.plist, which serves the same purposes like the AndroidManifest.xml

## lib

lib is where all of our code lives. 

## res

it contains some resources, things like strings for internationlization of your application.

## test

Here you will find Dart files for executing tests against your app. Flutter provides a Widget Tester utility that can make use of these tests to confirm the functionality of your widgets.

