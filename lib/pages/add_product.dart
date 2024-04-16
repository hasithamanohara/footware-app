import 'package:flutter/material.dart';
import 'package:footware/controllers/add_product_controller.dart';
import 'package:footware/widgets/drop_down_btn.dart';
import 'package:get/get.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final List<String> items = ['item 1', 'item 2', 'item 3', 'item 4'];

  final List<String> offers = ['false', 'true'];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Add Product'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //add product title
              const Text(
                'Add New Product',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              //product name
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                    labelText: 'Product Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),

              //description
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Product Description',
                    labelText: 'Product Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),

              //Product image
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Product Image',
                    labelText: 'Enter Your Product Image URL',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),

              //product name
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Product Price',
                    labelText: 'Product Price',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),

              //drop down button for product category
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Flexible(
                        child: DropDownCustomWidget(
                      items: items,
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },
                      title: 'Category',
                    )),
                    Flexible(
                        child: DropDownCustomWidget(
                      items: items,
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },
                      title: 'Brand',
                    )),
                  ],
                ),
              ),

              //offer section
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Offer Product ?"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropDownCustomWidget(
                  items: offers,
                  onSelected: (selectedValue) {
                    print(selectedValue);
                  },
                  title: 'Offers ?',
                ),
              ),

              //elevated buton for add item
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  ctrl.addProduct();
                },
                child: const Text('Add Product'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
