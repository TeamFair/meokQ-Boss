// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCH-oIUHc5WRdSHbLJRji4XHyEvK-WPhJY',
    appId: '1:140008629638:web:82b4aec0ed5c252db7b807',
    messagingSenderId: '140008629638',
    projectId: 'teamfair-7fb46',
    authDomain: 'teamfair-7fb46.firebaseapp.com',
    databaseURL: 'https://teamfair-7fb46-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'teamfair-7fb46.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6u-gC-noVOKvPXbNLl7D7Wmq1nILibuo',
    appId: '1:140008629638:android:5c5df4b8bfa27df2b7b807',
    messagingSenderId: '140008629638',
    projectId: 'teamfair-7fb46',
    databaseURL: 'https://teamfair-7fb46-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'teamfair-7fb46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIKTqIGfIGQi4EgpiWv94QGH08PXgRdkg',
    appId: '1:140008629638:ios:dd5b7f9a107a3f7fb7b807',
    messagingSenderId: '140008629638',
    projectId: 'teamfair-7fb46',
    databaseURL: 'https://teamfair-7fb46-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'teamfair-7fb46.appspot.com',
    androidClientId: '140008629638-c3jjvn8u51taiut58rtitsmtqcelr7om.apps.googleusercontent.com',
    iosClientId: '140008629638-eakr2u0u1fedvmjbr027njjq40jpbsrg.apps.googleusercontent.com',
    iosBundleId: 'com.example.meokqBoss',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDIKTqIGfIGQi4EgpiWv94QGH08PXgRdkg',
    appId: '1:140008629638:ios:50af232ec3f7b66bb7b807',
    messagingSenderId: '140008629638',
    projectId: 'teamfair-7fb46',
    databaseURL: 'https://teamfair-7fb46-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'teamfair-7fb46.appspot.com',
    androidClientId: '140008629638-c3jjvn8u51taiut58rtitsmtqcelr7om.apps.googleusercontent.com',
    iosClientId: '140008629638-71ois6uhb9j03js8dl9pb9jql9prdre4.apps.googleusercontent.com',
    iosBundleId: 'com.example.meokqBoss.RunnerTests',
  );
}