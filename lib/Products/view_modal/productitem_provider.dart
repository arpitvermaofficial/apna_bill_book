import 'dart:convert';

import 'package:apna_billbook/Products/modal/product_item.dart';
import 'package:apna_billbook/Products/modal/service/getproduct.dart';
import 'package:apna_billbook/Products/view/product_items_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class ProductItemProvider with ChangeNotifier {
  List<ProductItemModel> list_of_products = [];

  List<ProductItemModel> get listOfProducts => list_of_products;
  bool _isLoading1 = false;

  bool get isLoading1 => _isLoading1;
  bool _islastpage = false;

  bool get islastpage => _islastpage;
  int _pageNumber = 0;

  int get pageNumber => _pageNumber;
  bool _paginationloading = true;

  bool get paginationLoading => _paginationloading;

  getAllProducts() async {
    GetProducts getProducts = GetProducts();
    List<ProductItemModel> postList1 =
        await getProducts.getAllProducts(pageNumber);
    _islastpage = postList1.length < 20;
    _pageNumber = _pageNumber + 1;
    _paginationloading = false;
    list_of_products.addAll(postList1);
    notifyListeners();
  }
}
