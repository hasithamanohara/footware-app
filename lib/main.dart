import 'package:flutter/material.dart';
import 'package:footware/controllers/add_product_controller.dart';
import 'package:footware/pages/Home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'controllers/home_controller.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //registering homecontroller
  Get.put(HomeController());
  Get.put(AddProductController());
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
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}
