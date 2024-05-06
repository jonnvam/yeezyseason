import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCYZYDNVnPvt4-0oM5Vp_9ZB84JdigQ26M",
            authDomain: "logistudied.firebaseapp.com",
            projectId: "logistudied",
            storageBucket: "logistudied.appspot.com",
            messagingSenderId: "370530363936",
            appId: "1:370530363936:web:287147aef1ba31070c2a45",
            measurementId: "G-7P1E3JNHSL"));
  } else {
    await Firebase.initializeApp();
  }
}
