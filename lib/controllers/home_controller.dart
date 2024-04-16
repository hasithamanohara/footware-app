import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  String test = "this is test string";

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  @override
  void onInit() {
    productCollection = firestore.collection('product');
    super.onInit();
  }

  testMethod() {
    print(test);
  }

  //add product to the firestore
}
