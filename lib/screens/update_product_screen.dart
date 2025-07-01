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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildNewProductForm(),
      ),
    );
  }

  Widget _buildNewProductForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _productNameTEController,
            decoration:
                InputDecoration(hintText: 'Name', labelText: 'Product Name'),
          ),
          TextFormField(
            controller: _unitPriceTEController,
            decoration: InputDecoration(
                hintText: 'Unit price', labelText: 'Unit Price'),
          ),
          TextFormField(
            controller: _totalPriceTEController,
            decoration: InputDecoration(
                hintText: 'Total Price', labelText: 'Total Price'),
          ),
          TextFormField(
            controller: _imageTEController,
            decoration:
                InputDecoration(hintText: 'Image', labelText: 'Product Image'),
          ),
          TextFormField(
            controller: _codeTEController,
            decoration: InputDecoration(
                hintText: 'Product Code', labelText: 'Product Code'),
          ),
          TextFormField(
            controller: _quantityTEController,
            decoration:
                InputDecoration(hintText: 'Quantity', labelText: 'Quantity'),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(double.maxFinite),
            ),
            onPressed: _onTapAddProduct,
            child: Text('Update'),
          ),
        ],
      ),
    );
  }

  void _onTapAddProduct() {}

  void dispose() {
    _productNameTEController.dispose();
    _quantityTEController.dispose();
    _imageTEController.dispose();
    _codeTEController.dispose();
    _unitPriceTEController.dispose();
    _quantityTEController.dispose();
    super.dispose();
  }
}
