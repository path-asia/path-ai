import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDwEqvgMD00Kvo_P0Sn3AB7SOPGHc0iFnM",
            authDomain: "path-ai-asia.firebaseapp.com",
            projectId: "path-ai-asia",
            storageBucket: "path-ai-asia.appspot.com",
            messagingSenderId: "402149274634",
            appId: "1:402149274634:web:712700fa3aae1d66f99bf3",
            measurementId: "G-MLYKJ0L9CB"));
  } else {
    await Firebase.initializeApp();
  }
}
