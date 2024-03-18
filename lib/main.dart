import 'package:flutter/material.dart';
import 'package:footware/pages/Home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FootWare());
}

class FootWare extends StatefulWidget {
  const FootWare({super.key});

  @override
  State<FootWare> createState() => _FootWareState();
}

class _FootWareState extends State<FootWare> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
