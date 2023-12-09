import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAgU9m53DLnvIlh8gJdMLHp5UrEKevp8f8",
            authDomain: "minhasviagens-252aa.firebaseapp.com",
            projectId: "minhasviagens-252aa",
            storageBucket: "minhasviagens-252aa.appspot.com",
            messagingSenderId: "457794238887",
            appId: "1:457794238887:web:039c0c5f0338cbeb29de82"));
  } else {
    await Firebase.initializeApp();
  }
}
