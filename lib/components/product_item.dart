import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridTile(
       footer: GridTileBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {},
          icon:const Icon(Icons.favorite),
        ),
        title: Text(product.title),
        trailing: IconButton(
          onPressed: () {},
          icon:const  Icon(Icons.shopping_cart),
      ),
    ),
       child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
