// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCfnwQ4FmjXBYe9p5togx8Zb41y12LFslU',
    appId: '1:564135132108:web:8ca99d3f6c245c1135fb69',
    messagingSenderId: '564135132108',
    projectId: 'student-record-app-f5b1f',
    authDomain: 'student-record-app-f5b1f.firebaseapp.com',
    storageBucket: 'student-record-app-f5b1f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAk-afDx4nx0ZU0hL_sYUQ3qOKDTpAlDe0',
    appId: '1:564135132108:android:8297faae0d35fed135fb69',
    messagingSenderId: '564135132108',
    projectId: 'student-record-app-f5b1f',
    storageBucket: 'student-record-app-f5b1f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmzVpvjrheJTH-IW_cNRu9k2fj6Nx_rZo',
    appId: '1:564135132108:ios:04e7901561b173ec35fb69',
    messagingSenderId: '564135132108',
    projectId: 'student-record-app-f5b1f',
    storageBucket: 'student-record-app-f5b1f.appspot.com',
    iosBundleId: 'com.example.crudApp',
  );
}
