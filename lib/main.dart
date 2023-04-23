import 'package:carmania/Auth%20Page/auth_page.dart';
import 'package:carmania/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "Geomanist"),
      debugShowCheckedModeBanner: false,
      home: (FirebaseAuth.instance.currentUser != null) ? Home_Sceen() : AuthPage(),
    ),
  );
}

