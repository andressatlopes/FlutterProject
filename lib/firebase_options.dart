// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'cadastro.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDJJI5hxVzrjVWPyxqaLvTZF1tH4xWYuDg',
      appId: '1:766213068289:web:6d94302cd2928d4e82d200',
      messagingSenderId: '766213068289',
      projectId: 'medicinacelso',
      authDomain: 'medicinacelso.firebaseapp.com',
      storageBucket: 'medicinacelso.appspot.com',
      measurementId: 'G-TT4GXQPSV8',
      // Adicione outras configurações, se necessário
    ),
  );
  runApp(const Cadastro());
}

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
    apiKey: 'AIzaSyDJJI5hxVzrjVWPyxqaLvTZF1tH4xWYuDg',
    appId: '1:766213068289:web:6d94302cd2928d4e82d200',
    messagingSenderId: '766213068289',
    projectId: 'medicinacelso',
    authDomain: 'medicinacelso.firebaseapp.com',
    storageBucket: 'medicinacelso.appspot.com',
    measurementId: 'G-TT4GXQPSV8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKyiyK7meSyd6aBLErkXBa_TaTmb0c4T0',
    appId: '1:766213068289:android:0cc1e2cef2e1810282d200',
    messagingSenderId: '766213068289',
    projectId: 'medicinacelso',
    storageBucket: 'medicinacelso.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDwpyL8HG5VEsfVsLgkdPrfr0Eqv8l_oWY',
    appId: '1:766213068289:ios:4a574593c914da3582d200',
    messagingSenderId: '766213068289',
    projectId: 'medicinacelso',
    storageBucket: 'medicinacelso.appspot.com',
    iosClientId:
        '766213068289-3rrsncahek9enk5nbrb8n0ltlpsaoah6.apps.googleusercontent.com',
    iosBundleId: 'com.example.projeto',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDwpyL8HG5VEsfVsLgkdPrfr0Eqv8l_oWY',
    appId: '1:766213068289:ios:4a574593c914da3582d200',
    messagingSenderId: '766213068289',
    projectId: 'medicinacelso',
    storageBucket: 'medicinacelso.appspot.com',
    iosClientId:
        '766213068289-3rrsncahek9enk5nbrb8n0ltlpsaoah6.apps.googleusercontent.com',
    iosBundleId: 'com.example.projeto',
  );
}
