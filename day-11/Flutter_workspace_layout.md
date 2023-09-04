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

