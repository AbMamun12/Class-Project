import 'dart:convert';

import 'package:class_project/models/product.dart';
import 'package:class_project/screens/add_new_product_screen.dart';
import 'package:class_project/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

  List<Product> productList = [];
  bool _inProgress= false;

  @override
  void initState() {
    super.initState();
    getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            getProductList();
          }, icon: const Icon(Icons.refresh))

        ],
        title: Text('Product List Screen'),
      ),
      body: _inProgress ? const Center(
        child: CircularProgressIndicator(),
      ): Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.separated(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return  ProductItem(
              product: productList[index],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 4,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const AddNewProductScreen();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> getProductList() async {
    productList.clear();
    _inProgress = true;
    setState(() {});
    print('requesting');
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct');
    Response response = await get(uri);
    print(response);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      productList.clear();
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      for (var item in jsonResponse['data']) {
        Product product = Product(id: item['_id'],
          productName: item['ProductName']?? '',
          productCode: item['ProductCode']?? '',
          productImage: item['Img']?? '',
          unitPrice: item['UnitPrice']?? '',
          quantity: item['Qty']?? '',
          totalPrice: item['TotalPrice']?? '',
          createdAt: item['CreatedDate']?? '');
        productList.add(product);
      }
    }
    _inProgress =false;
    setState(() {});
  }


}
