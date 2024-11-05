import 'package:dio/dio.dart';
import '../models/listing.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Listing>> getProducts() async {
    try {
      final response = await _dio.get('http://127.0.0.1:9876/listings');
      if (response.statusCode == 200) {
        List<Listing> listingsR = [];
        for (dynamic l in response.data){
          // for (String k in )
          listingsR.add(Listing.fromJson(l));
        }
        return listingsR;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error fetching products: $e');
    }
  }

  Future<Listing> getProduct(int id) async {
    try {
      final response = await _dio.get('http://10.192.229.176:9876/listing/$id');
      if (response.statusCode == 200) {
        Listing product = Listing.fromJson(response.data);
        return product;
      } else {
        throw Exception('Failed to load product');
      }
    } catch (e) {
      throw Exception('Error fetching product: $e');
    }
  }

  void addProduct(Listing listing) async {
    try {
      final response = await _dio.post('http://10.192.229.176:9876/listing', data: listing);
      if (response.statusCode == 200) {
        return;
      } else {
        throw Exception('Failed to add product');
      }
    } catch (e) {
      throw Exception('Error adding product: $e');
    }
  }

  void delProduct(int id) async {
    try {
      final response = await _dio.delete('http://10.192.229.176:9876/listing/$id');
      if (response.statusCode == 200) {
        return;
      } else {
        throw Exception('Failed to delete products');
      }
    } catch (e) {
      throw Exception('Error deleting products: $e');
    }
  }
}