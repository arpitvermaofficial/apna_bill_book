import 'package:apna_billbook/Products/view_modal/productitem_provider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Products/view/product_items_list_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductItemProvider()),
      ],
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductItems(),
    );
  }
}
