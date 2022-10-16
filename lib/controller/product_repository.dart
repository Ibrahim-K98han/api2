import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductRepository {
  var url = 'https://fakestoreapi.com/products';

  loadProductFromApi() async {
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }
}
