import 'package:flutter/material.dart';
import 'package:footware/controllers/home_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class testpage extends StatelessWidget {
  const testpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (ctrl) {
        return Scaffold(
          appBar: AppBar(
            title: Text('testpage'),
          ),
          body: Center(
            child: Text('testpage'),
          ),
        );
      },
    );
  }
}
