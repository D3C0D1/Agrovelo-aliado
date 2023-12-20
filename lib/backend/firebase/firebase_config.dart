import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyChR0TWGka2VeYeM9B38IVnFCWa09gy694",
            authDomain: "agrovelo-dev.firebaseapp.com",
            projectId: "agrovelo-dev",
            storageBucket: "agrovelo-dev.appspot.com",
            messagingSenderId: "11952271046",
            appId: "1:11952271046:web:d84f439b5d43a31a6671c7",
            measurementId: "G-C2EC4BYJ6S"));
  } else {
    await Firebase.initializeApp();
  }
}
