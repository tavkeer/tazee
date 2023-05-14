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
    apiKey: 'AIzaSyB1m7RMumm7NR-L1onsZ2fUe8eekHFp4cw',
    appId: '1:1025844190155:android:8468535373e5eaa1d7b44e',
    messagingSenderId: '1025844190155',
    projectId: 'waran-57510',
    storageBucket: 'waran-57510.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCScplEihQVoCeAc98VF2fvGgBfaRGcVek',
    appId: '1:1025844190155:ios:0dbd1b3b0e2ac3f2d7b44e',
    messagingSenderId: '1025844190155',
    projectId: 'waran-57510',
    storageBucket: 'waran-57510.appspot.com',
    androidClientId: '1025844190155-sk04orgoonoa31l52jd5heioa4g32vsv.apps.googleusercontent.com',
    iosClientId: '1025844190155-3frv03nbujk6b0nv70hktrqlqveu4tjl.apps.googleusercontent.com',
    iosBundleId: 'com.VoidConsole.tazee',
  );
}
