import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_challenges/viewmodels/product_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductGridScreen extends StatefulWidget {
  const ProductGridScreen({super.key});
  @override
  State<ProductGridScreen> createState() => _ProductsScreen();
}

class _ProductsScreen extends State<ProductGridScreen> {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductViewmodel>(context, listen: false).fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<ProductViewmodel>(
        builder:
            (context, productViewmodel, child) => GridView.builder(
              itemCount: productViewmodel.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // mainAxisSpacing: 8,
                // crossAxisSpacing: 8,
                childAspectRatio: .85,
              ),

              itemBuilder: (context, index) {
                if (productViewmodel.isLoading) {
                  return CircularProgressIndicator(color: Colors.black);
                } else {
                  final product = productViewmodel.products[index];
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      padding: EdgeInsets.all(4),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.25),
                            offset: Offset(0, 4),
                            blurRadius: 21,
                          ),
                        ],
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 4,
                            child: CachedNetworkImage(
                              imageUrl: product.images.last,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            product.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
      ),
    );
  }
}
