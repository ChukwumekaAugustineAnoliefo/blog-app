import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_simple_blog_app/screens/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(primaryColor: Colors.black),
  ));
}
