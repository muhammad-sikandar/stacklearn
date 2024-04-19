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
    apiKey: 'AIzaSyATsR99kutvRd40jXL0snVCbHb6mZ0GRNc',
    appId: '1:1089057015353:web:844eea9464cdaa6f8eefe8',
    messagingSenderId: '1089057015353',
    projectId: 'stackchat-665ab',
    authDomain: 'stackchat-665ab.firebaseapp.com',
    storageBucket: 'stackchat-665ab.appspot.com',
    measurementId: 'G-0X3LFBVEQH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLxP-KOVR0RsfRkSRdXrbDefmp-Tgc90s',
    appId: '1:1089057015353:android:38f40d674fca14658eefe8',
    messagingSenderId: '1089057015353',
    projectId: 'stackchat-665ab',
    storageBucket: 'stackchat-665ab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBp5fzRFkG6TKex-yQl9HWvJyZNDiweDj0',
    appId: '1:1089057015353:ios:55920d3c1fb649508eefe8',
    messagingSenderId: '1089057015353',
    projectId: 'stackchat-665ab',
    storageBucket: 'stackchat-665ab.appspot.com',
    iosBundleId: 'com.example.stacklearn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBp5fzRFkG6TKex-yQl9HWvJyZNDiweDj0',
    appId: '1:1089057015353:ios:55920d3c1fb649508eefe8',
    messagingSenderId: '1089057015353',
    projectId: 'stackchat-665ab',
    storageBucket: 'stackchat-665ab.appspot.com',
    iosBundleId: 'com.example.stacklearn',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyATsR99kutvRd40jXL0snVCbHb6mZ0GRNc',
    appId: '1:1089057015353:web:a2e056afa02790d28eefe8',
    messagingSenderId: '1089057015353',
    projectId: 'stackchat-665ab',
    authDomain: 'stackchat-665ab.firebaseapp.com',
    storageBucket: 'stackchat-665ab.appspot.com',
    measurementId: 'G-NRTHMJQLME',
  );
}