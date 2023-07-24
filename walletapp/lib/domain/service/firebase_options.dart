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
    apiKey: 'AIzaSyAKGrfmiuc50Saq-kfL7MsZ_Dxx0e4tuTQ',
    appId: '1:142111941313:web:88051bb1d34f165d86ea40',
    messagingSenderId: '142111941313',
    projectId: 'runnerapp-5ca00',
    authDomain: 'runnerapp-5ca00.firebaseapp.com',
    storageBucket: 'runnerapp-5ca00.appspot.com',
    measurementId: 'G-DVY584F2MH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNe8h_dfRGxxR8QxBtTuboZnoio8UXvLg',
    appId: '1:142111941313:android:3632d6fa44bf05da86ea40',
    messagingSenderId: '142111941313',
    projectId: 'runnerapp-5ca00',
    storageBucket: 'runnerapp-5ca00.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAodT8FNZoF_b8pXNYwodv9vhcS4lYEw_E',
    appId: '1:142111941313:ios:6afde1bbb88d032d86ea40',
    messagingSenderId: '142111941313',
    projectId: 'runnerapp-5ca00',
    storageBucket: 'runnerapp-5ca00.appspot.com',
    iosClientId:
        '142111941313-9sb988bhbud361nommg3iu2c90or853k.apps.googleusercontent.com',
    iosBundleId: 'com.example.walletapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAodT8FNZoF_b8pXNYwodv9vhcS4lYEw_E',
    appId: '1:142111941313:ios:07d7fb1061538cf686ea40',
    messagingSenderId: '142111941313',
    projectId: 'runnerapp-5ca00',
    storageBucket: 'runnerapp-5ca00.appspot.com',
    iosClientId:
        '142111941313-h7teeshc9d5a0ai0g683dffh0isrs76s.apps.googleusercontent.com',
    iosBundleId: 'com.example.walletapp.RunnerTests',
  );
}