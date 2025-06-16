import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _productNameTEController =
      TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _inProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _BuildProductFOrm(),
        ),
      ),
    );
  }

  Widget _BuildProductFOrm() {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            controller: _productNameTEController,
            decoration:
               const InputDecoration(hintText: 'Name', labelText: 'Product Name'),
            validator: (String? value){
              if(value == null && value!.isEmpty){
                return'Enter a valid value';
              }
              return null;
            },
          ),

          TextFormField(
            controller: _unitPriceTEController,
            decoration:
                InputDecoration(hintText: 'Price', labelText: 'Unite Price'),
            validator: (String? value){
              if(value == null && value!.isEmpty){
                return'Enter a valid value';
              }
              return null;
            },

          ),
          TextFormField(
            controller: _totalPriceTEController,
            decoration: InputDecoration(
                hintText: 'Total Price', labelText: 'Total price'),
            validator: (String? value){
              if(value == null && value!.isEmpty){
                return'Enter a valid value';
              }
              return null;
            },

          ),
          TextFormField(
            controller: _imageTEController,
            decoration:
                InputDecoration(hintText: 'Image', labelText: 'Product Image'),
            validator: (String? value){
              if(value == null && value!.isEmpty){
                return'Enter a valid value';
              }
              return null;
            },

          ),
          TextFormField(
            controller: _codeTEController,
            decoration: InputDecoration(
                hintText: 'Product Code', labelText: 'Product Code'),
            validator: (String? value){
              if(value == null && value!.isEmpty){
                return'Enter a valid value';
              }
              return null;
            },

          ),
          TextFormField(
            controller: _quantityTEController,
            decoration:
                InputDecoration(hintText: 'Quantity', labelText: 'Quantity'),
            validator: (String? value){
              if(value == null && value!.isEmpty){
                return'Enter a valid value';
              }
              return null;
            },

          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite)),
              onPressed: _onTapAddProductButton,
              child: const Text('Add Product'))
        ],
      ),
    );
  }

  void _onTapAddProductButton() {
    if (_formkey.currentState!.validate()) {
      addNewProduct();
    }
  }

  Future<void> addNewProduct() async {
    _inProgress = true;
    setState(() {});
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');
    Map<String, dynamic>requestBody= {
      "Img": _imageTEController,
      "ProductCode": _codeTEController,
      "ProductName": _productNameTEController,
      "Qty": _quantityTEController,
      "TotalPrice": _totalPriceTEController,
      "UnitPrice": _unitPriceTEController,
    };
    Response response = await post(
      uri,
      headers: {
        "Content-Type":"äpplication/json"
      },
      body: jsonEncode(requestBody)
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {}
    _inProgress = false;
    setState(() {});
  }

  @override
  void dispose() {
    _productNameTEController.dispose();
    _totalPriceTEController.dispose();
    _unitPriceTEController.dispose();
    _imageTEController.dispose();
    _codeTEController.dispose();
    _quantityTEController.dispose();

    super.dispose();
  }
}
