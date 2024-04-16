import 'package:get/get_state_manager/get_state_manager.dart';

class AddProductController extends GetxController {
  final String testProduct = "test product";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void addProduct() {
    print('new Product added');
  }
}
