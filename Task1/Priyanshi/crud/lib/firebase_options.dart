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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAm6rQXF4imiphrki4InfkvMws8pFxRipY',
    appId: '1:550921004477:web:19d152b7af81b00a195ed4',
    messagingSenderId: '550921004477',
    projectId: 'crud-64288',
    authDomain: 'crud-64288.firebaseapp.com',
    storageBucket: 'crud-64288.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGQ89bzf30KsqNQH9y5whj01R75vTImlc',
    appId: '1:550921004477:android:7d01ea1f65c4a20d195ed4',
    messagingSenderId: '550921004477',
    projectId: 'crud-64288',
    storageBucket: 'crud-64288.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHpg4JjT2bYK5JKtkg2CVVR0z6YbxSHrA',
    appId: '1:550921004477:ios:ce856f30592580fc195ed4',
    messagingSenderId: '550921004477',
    projectId: 'crud-64288',
    storageBucket: 'crud-64288.appspot.com',
    iosBundleId: 'com.example.crud',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHpg4JjT2bYK5JKtkg2CVVR0z6YbxSHrA',
    appId: '1:550921004477:ios:ce856f30592580fc195ed4',
    messagingSenderId: '550921004477',
    projectId: 'crud-64288',
    storageBucket: 'crud-64288.appspot.com',
    iosBundleId: 'com.example.crud',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAm6rQXF4imiphrki4InfkvMws8pFxRipY',
    appId: '1:550921004477:web:c28dc287eb71c969195ed4',
    messagingSenderId: '550921004477',
    projectId: 'crud-64288',
    authDomain: 'crud-64288.firebaseapp.com',
    storageBucket: 'crud-64288.appspot.com',
  );
}
