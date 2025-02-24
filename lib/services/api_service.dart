import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/image_model.dart';

class ApiService {
  final String apiUrl = "https://www.envisager.kr/api/get-nft-museum"; 

  Future<List<ImageModel>> fetchImages() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      List<dynamic> imagesJson = data['data']; 
      return imagesJson.map((json) => ImageModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load images');
    }
  }
}