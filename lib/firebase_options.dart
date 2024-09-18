// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
///
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
    apiKey: 'AIzaSyBYKBtE_KfbVfax_m06fcanVU0toJKyywc',
    appId: '1:970031950153:web:902170a1cb27c3d31e9298',
    messagingSenderId: '970031950153',
    projectId: 'ecommerceapp-b6170',
    authDomain: 'ecommerceapp-b6170.firebaseapp.com',
    storageBucket: 'ecommerceapp-b6170.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDo_mp5T_7IdWIzQeS-dTIPbV9C6dbh4z4',
    appId: '1:970031950153:android:4b31013052fe1bce1e9298',
    messagingSenderId: '970031950153',
    projectId: 'ecommerceapp-b6170',
    storageBucket: 'ecommerceapp-b6170.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGxg4reafXQZ3csiflxk581gQmma2JPFw',
    appId: '1:970031950153:ios:9d2849f0e092472c1e9298',
    messagingSenderId: '970031950153',
    projectId: 'ecommerceapp-b6170',
    storageBucket: 'ecommerceapp-b6170.appspot.com',
    androidClientId: '970031950153-uu6832h9r52dso4f2ch0v9fh1rm90kgp.apps.googleusercontent.com',
    iosClientId: '970031950153-tpdu5e4eq4rfdi6gvfkfbo4du4ldtkq8.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterEcommerceProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBGxg4reafXQZ3csiflxk581gQmma2JPFw',
    appId: '1:970031950153:ios:9d2849f0e092472c1e9298',
    messagingSenderId: '970031950153',
    projectId: 'ecommerceapp-b6170',
    storageBucket: 'ecommerceapp-b6170.appspot.com',
    androidClientId: '970031950153-uu6832h9r52dso4f2ch0v9fh1rm90kgp.apps.googleusercontent.com',
    iosClientId: '970031950153-tpdu5e4eq4rfdi6gvfkfbo4du4ldtkq8.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterEcommerceProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBYKBtE_KfbVfax_m06fcanVU0toJKyywc',
    appId: '1:970031950153:web:e876e202706458d21e9298',
    messagingSenderId: '970031950153',
    projectId: 'ecommerceapp-b6170',
    authDomain: 'ecommerceapp-b6170.firebaseapp.com',
    storageBucket: 'ecommerceapp-b6170.appspot.com',
  );

}