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
    apiKey: 'AIzaSyBCEK3BaabT0EBm8KcRrnu2yLLOZXRVzNs',
    appId: '1:356121302292:web:e775beefb635813fe2de01',
    messagingSenderId: '356121302292',
    projectId: 'mungteacher-6f8b8',
    authDomain: 'mungteacher-6f8b8.firebaseapp.com',
    storageBucket: 'mungteacher-6f8b8.appspot.com',
    measurementId: 'G-RMRXG2XTYJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnaCHQJyjRbT2i9bzSviCusgylMLSdOWc',
    appId: '1:356121302292:android:4d7e6b6683df4c35e2de01',
    messagingSenderId: '356121302292',
    projectId: 'mungteacher-6f8b8',
    storageBucket: 'mungteacher-6f8b8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnSg8DjlNDENRd-LI9Cz42h6_oxNiuEVs',
    appId: '1:356121302292:ios:3309ca71c85ffc30e2de01',
    messagingSenderId: '356121302292',
    projectId: 'mungteacher-6f8b8',
    storageBucket: 'mungteacher-6f8b8.appspot.com',
    iosBundleId: 'com.example.mungteacher',
  );
}
