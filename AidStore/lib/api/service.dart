import 'package:dio/dio.dart';
import '../models/listing.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Listing>> getProducts() async {
    try {
      final response = await _dio.get('http://127.0.0.1:9876');
      if (response.statusCode == 200) {
        List<Listing> products = (response.data as List)
            .map((product) => Listing.fromJson(product))
            .toList();
        return products;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error fetching products: $e');
    }
  }
}