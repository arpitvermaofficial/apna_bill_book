import 'dart:convert';
import '../product_item.dart';
import 'package:http/http.dart';

class GetProducts {
  Future<List<ProductItemModel>> getAllProducts(int pageNumber) async {
    List<ProductItemModel> list_of_products = [];
    try {
      final response = await get(Uri.parse(
          "http://app.apnabillbook.com/api/product?storeId=4ad3de84-bcaa-4bb2-9eb9-1846844e3314&page=$pageNumber&pageSize=10"));

      var dat = jsonDecode(response.body);
      int length = dat['data'].length;
      List data = dat['data']['data'];
      for (int j = 0; j < length; j++) {
        ProductItemModel item = ProductItemModel.fromJson(data[j]);
        list_of_products.add(item);
      }
    } catch (e) {
      print("error is --> $e");
    }
    return list_of_products;
  }
}
