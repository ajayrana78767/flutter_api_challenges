import 'package:flutter/widgets.dart';
import 'package:flutter_api_challenges/models/product_model.dart';
import 'package:flutter_api_challenges/services/product_service.dart';

class ProductViewmodel with ChangeNotifier {
  final ProductService _productServices = ProductService();
  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
  }

  Future<void> fetchProducts() async {
    setLoading(true);
    try {
      final productModel = await _productServices.fetchProducts();
      _products = productModel.products;
      notifyListeners();
    } catch (e) {
      debugPrint('Unexpected error:$e');
    } finally {
      setLoading(false);
    }
  }
}
