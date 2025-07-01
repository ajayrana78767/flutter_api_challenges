import 'package:dio/dio.dart';
import 'package:flutter_api_challenges/models/product_model.dart';

class ProductService {
  final dio = Dio();
  final apiUrl = "https://dummyjson.com/products/category/smartphones";

  Future<ProductModel> fetchProducts() async {
    try {
      final response = await dio.get(apiUrl);
      if (response.statusCode == 200) {
        //  print(response.data);

        return ProductModel.fromJson(response.data);
      } else {
        throw Exception('Something went wrong [${response.statusCode}]');
      }
    } on DioException catch (dioError) {
      throw Exception('Dio error : ${dioError.message}}');
    } catch (e) {
      return throw Exception('Unexpected error = $e');
    }
  }
}
