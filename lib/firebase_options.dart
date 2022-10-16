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
    apiKey: 'AIzaSyBklRSTulAxQtb9_6jFzw__jZ3tuJh7qqQ',
    appId: '1:71693804254:web:3605987dd8b1178253584f',
    messagingSenderId: '71693804254',
    projectId: 'todolist-89bb8',
    authDomain: 'todolist-89bb8.firebaseapp.com',
    storageBucket: 'todolist-89bb8.appspot.com',
    measurementId: 'G-GVWTC8F2CH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbEsq5kMyRG1iG9NsrRoDArTg8ejEATz0',
    appId: '1:71693804254:android:614ef3d10ca43f6053584f',
    messagingSenderId: '71693804254',
    projectId: 'todolist-89bb8',
    storageBucket: 'todolist-89bb8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDm2KbfqYY4WFVMOzZNfJMVMuX8nYIeH6k',
    appId: '1:71693804254:ios:1f4ccc2bb806c42653584f',
    messagingSenderId: '71693804254',
    projectId: 'todolist-89bb8',
    storageBucket: 'todolist-89bb8.appspot.com',
    iosClientId: '71693804254-mo7lcm6uq1e6ahq2tbe6l7env7ee7qoa.apps.googleusercontent.com',
    iosBundleId: 'net.kzabe.todolistFlutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDm2KbfqYY4WFVMOzZNfJMVMuX8nYIeH6k',
    appId: '1:71693804254:ios:1f4ccc2bb806c42653584f',
    messagingSenderId: '71693804254',
    projectId: 'todolist-89bb8',
    storageBucket: 'todolist-89bb8.appspot.com',
    iosClientId: '71693804254-mo7lcm6uq1e6ahq2tbe6l7env7ee7qoa.apps.googleusercontent.com',
    iosBundleId: 'net.kzabe.todolistFlutterApp',
  );
}