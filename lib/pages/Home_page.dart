import 'package:flutter/material.dart';
import 'package:footware/controllers/home_controller.dart';
import 'package:footware/pages/add_product.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctrl) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('FootWare Admin'),
            ),
            body: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text('title'),
                  subtitle: const Text('price'),
                  trailing: IconButton(
                      onPressed: () {
                        ctrl.testMethod();
                      },
                      icon: const Icon(Icons.delete)),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Get.to(() => const AddProduct());
              },
              child: const Icon(Icons.add),
            ));
      },
    );
  }
}
