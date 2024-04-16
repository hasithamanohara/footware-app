import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  String test = "this is test string";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  testMethod() {
    print(test);
  }
}
