import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBOCwFBj7ZWmquPcjmub8r3VMtfO1ewUHY",
            authDomain: "friendshelf-d081b.firebaseapp.com",
            projectId: "friendshelf-d081b",
            storageBucket: "friendshelf-d081b.appspot.com",
            messagingSenderId: "523510982810",
            appId: "1:523510982810:web:e6a271f2eb99a423fe9723",
            measurementId: "G-1TYMJBFR1B"));
  } else {
    await Firebase.initializeApp();
  }
}
