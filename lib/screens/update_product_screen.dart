import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _productNameTEController =
      TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _BuildProductFOrm(),
      ),
    );
  }

  Widget _BuildProductFOrm() {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextField(
            controller: _productNameTEController,
            decoration:
                InputDecoration(hintText: 'Name', labelText: 'Product Name'),
          ),
          TextField(
            controller: _unitPriceTEController,
            decoration:
                InputDecoration(hintText: 'Price', labelText: 'Unite Price'),
          ),
          TextField(
            controller: _totalPriceTEController,
            decoration: InputDecoration(
                hintText: 'Total Price', labelText: 'Total price'),
          ),
          TextField(
            controller: _imageTEController,
            decoration:
                InputDecoration(hintText: 'Image', labelText: 'Product Image'),
          ),
          TextField(
            controller: _codeTEController,
            decoration: InputDecoration(
                hintText: 'Product Code', labelText: 'Product Code'),
          ),
          TextField(
            controller: _quantityTEController,
            decoration:
                InputDecoration(hintText: 'Quantity', labelText: 'Quantity'),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite)),
              onPressed: _onTapAddProductButton,
              child: const Text('Update')
          )
        ],
      ),
    );
  }

  void _onTapAddProductButton() {}

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
