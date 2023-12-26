# FIREBASE

Firebase is a backend as a service, it can handle auth and it has a database. It has the following services:

1. Databases
2. File Storage
3. Authentication
4. Analytics
5. Notifications
6. Hosting

## Firestore

if your application uses firebase as a backend, it can scale faar and widee

its database is known as firestore.there are two types of objects in firestore:

1. documents
2. collections - maps of documents


### QuerySnapShot

querysnapshot is a class that represents some data from the database at any given moment - instantenious data

## Firebase Analytics

this helps you to know how your app is being used, you need to add the firebase analaytics dependencies - `firebase_analytics`.

then you log events to the it : `FirebaseAnalyics.logEvent("the event you want to log)`.

## [Firebase Cloud Messaging](https://pub.dev/packages/firebase_messaging)

Push Notifications are extremely important feature for an app. These are messages sent to your app's users so that they can receive even when your app is not open.

you can send notifications about anything:

1. offers
2. coupons
3. discounts

the dependecy you need to have added is `firebase_messaging`. 

## Firebase Cloud Storage

it is a service that allows uploading and downloading of files. they include: 

1. images
2. audios
3. videos

the dependency you need to add to your pubspec.yaml is `firebase_storage`.