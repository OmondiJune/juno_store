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
    apiKey: 'AIzaSyD_UQ1ATg-rkfbxJySxQkETQgzclZzkIyo',
    appId: '1:690912060204:web:26b5228200e29551fa8289',
    messagingSenderId: '690912060204',
    projectId: 'juno-store-cfcd2',
    authDomain: 'juno-store-cfcd2.firebaseapp.com',
    storageBucket: 'juno-store-cfcd2.appspot.com',
    measurementId: 'G-2BJ6KZEFH6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBErNIMYqs3W4kGxrgxQqTRWU44W9omnFA',
    appId: '1:690912060204:android:76c213b7a0ff22e9fa8289',
    messagingSenderId: '690912060204',
    projectId: 'juno-store-cfcd2',
    storageBucket: 'juno-store-cfcd2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9_hUy4onTcOCGPA0aV1JT6PyDALXBLjc',
    appId: '1:690912060204:ios:401f6ecbd835048cfa8289',
    messagingSenderId: '690912060204',
    projectId: 'juno-store-cfcd2',
    storageBucket: 'juno-store-cfcd2.appspot.com',
    iosBundleId: 'com.example.junoStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA9_hUy4onTcOCGPA0aV1JT6PyDALXBLjc',
    appId: '1:690912060204:ios:efe1621fde9cbd2bfa8289',
    messagingSenderId: '690912060204',
    projectId: 'juno-store-cfcd2',
    storageBucket: 'juno-store-cfcd2.appspot.com',
    iosBundleId: 'com.example.junoStore.RunnerTests',
  );
}