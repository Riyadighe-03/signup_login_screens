import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:second_project/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
          options: const FirebaseOptions(
              appId: '1:541706731665:android:a19916258df9d609c63f30',
              apiKey: 'AIzaSyC1v4y4HvaC7cTl9WGKbBkO5w5TdHj3MtM',
              projectId: 'second-project-667f6',
              messagingSenderId: '',
              storageBucket: "second-project-667f6.appspot.com"))
      .then((value) => print("Successfull"))
      .then((value) => debugPrint("firebase initialised"));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
