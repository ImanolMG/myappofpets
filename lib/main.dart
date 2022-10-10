import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myappofpets/pages/home_Entry.dart';
import 'package:myappofpets/pages/pages_main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override //es un decorator
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vista1',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      // home: const HomeEntry(),
      home: const Pages_main(),
    );
  }
}

//colocar las libreias que necesito para la autenticacion