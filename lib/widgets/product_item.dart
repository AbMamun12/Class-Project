import 'package:class_project/models/product.dart';
import 'package:class_project/screens/update_product_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
   ProductItem({
    super.key, required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: Colors.white,
      title: Text(product.productName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: ${product.ProductCode}'),
          Text('Price: \$${product.unitPrice}'),
          Text('Total Price: \$${product.totalPrice}'),
          Text('Qantity: ${product.quantity}'),
          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const UpdateProductScreen();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.edit),
                label: const Text('Edit'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_rounded,
                  color: Colors.red,
                ),
                label: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
