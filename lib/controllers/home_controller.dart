import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:footware/model/product.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String test = "this is test string";

  //cotrollers for text fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  //variable for store dropdown btn
  String catogery = 'genaral';
  String brand = 'manozy';
  bool offer = false;

  List<Product> products = [];

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
  addProduct() {
    DocumentReference doc = productCollection.doc();
    try {
      Product product = Product(
        id: doc.id,
        name: nameController.text,
        price: double.parse(priceController.text),
        image: imageController.text,
        description: descriptionController.text,
        category: catogery,
        brand: brand,
        offer: offer,
      );
      final productJson = product.toJson();
      doc.set(productJson);
      Get.snackbar("Succes", "Product added successfully",
          colorText: Colors.green);
      seValuesDefault();
    } catch (e) {
      Get.snackbar("Faild", "Failed to add product, please try again later",
          colorText: Colors.red);
      print(e.toString());
    }
  }

  seValuesDefault() {
    nameController.clear();
    descriptionController.clear();
    imageController.clear();
    priceController.clear();

    catogery = 'general';
    brand = 'general';
    offer = false;
    update();
  }

  //fetch product
  Future<void> fetchProduct() async {
    try {
      QuerySnapshot productQuerySnapshot = await productCollection.get();
      final List<Product> retreiveProduct = productQuerySnapshot.docs();
    } catch (e) {
      print(e.toString());
    }
  }
}
