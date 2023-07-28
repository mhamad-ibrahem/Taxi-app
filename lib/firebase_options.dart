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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMt1lVTwK9RxmD5lz6KkMfHlbqD3PR91Q',
    appId: '1:653834972491:android:61c1f9f6ee829c3e1f4cce',
    messagingSenderId: '653834972491',
    projectId: 'taxi-45664',
    storageBucket: 'taxi-45664.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxZchYaTnH50p_btXlp0w9iy9LM3c9afE',
    appId: '1:653834972491:ios:130c306ca1afb4211f4cce',
    messagingSenderId: '653834972491',
    projectId: 'taxi-45664',
    storageBucket: 'taxi-45664.appspot.com',
    androidClientId: '653834972491-mmh39kqfq2dfu293nu9i9dbd09icp0ur.apps.googleusercontent.com',
    iosClientId: '653834972491-n79v43ntk37kmphml609t1d8351c4kq9.apps.googleusercontent.com',
    iosBundleId: 'com.example.taxiApp',
  );
}