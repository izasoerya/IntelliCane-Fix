import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAGDlztbNVfRVEJqoF5qufcXl4sboCu15Y",
            authDomain: "cane-stage-3-6l8bmg.firebaseapp.com",
            projectId: "cane-stage-3-6l8bmg",
            storageBucket: "cane-stage-3-6l8bmg.appspot.com",
            messagingSenderId: "93585033672",
            appId: "1:93585033672:web:1ea5d7c8cffcedd56a98fd"));
  } else {
    await Firebase.initializeApp();
  }
}
