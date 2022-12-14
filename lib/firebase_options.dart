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
    apiKey: 'AIzaSyB5__qdrEZhPLRoF-27eJN56Spn-t_TWik',
    appId: '1:1086445591577:web:0c1be0d9abf6646b729e88',
    messagingSenderId: '1086445591577',
    projectId: 'myapp-2b6df',
    authDomain: 'myapp-2b6df.firebaseapp.com',
    storageBucket: 'myapp-2b6df.appspot.com',
    measurementId: 'G-N9X1YQBNBT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqwDlDVAnZbWT1X-GKe9CGQd5G4QA8pfU',
    appId: '1:1086445591577:android:f7a78dd14db0377a729e88',
    messagingSenderId: '1086445591577',
    projectId: 'myapp-2b6df',
    storageBucket: 'myapp-2b6df.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSmVi63SJ1y_l4kRJsHKSyM-o04XJF8vw',
    appId: '1:1086445591577:ios:ecf95ce5f8ff2629729e88',
    messagingSenderId: '1086445591577',
    projectId: 'myapp-2b6df',
    storageBucket: 'myapp-2b6df.appspot.com',
    iosClientId: '1086445591577-0qsjciequtvb1s2ldvsuo0arfaa2ai50.apps.googleusercontent.com',
    iosBundleId: 'com.sebas.myapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSmVi63SJ1y_l4kRJsHKSyM-o04XJF8vw',
    appId: '1:1086445591577:ios:ecf95ce5f8ff2629729e88',
    messagingSenderId: '1086445591577',
    projectId: 'myapp-2b6df',
    storageBucket: 'myapp-2b6df.appspot.com',
    iosClientId: '1086445591577-0qsjciequtvb1s2ldvsuo0arfaa2ai50.apps.googleusercontent.com',
    iosBundleId: 'com.sebas.myapp',
  );
}
