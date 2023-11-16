import 'package:apna_billbook/Products/view_modal/productitem_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItems extends StatefulWidget {
  const ProductItems({super.key});


  @override
  _ProductItemsState createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems> {
  late Future<bool> isLoading;
  Future<bool> intialise() async {
    await Provider.of<ProductItemProvider>(context, listen: false)
        .getAllProducts();

    return true;
  }

  @override
  void initState() {
    super.initState();
    isLoading = intialise();
  }

  List<String> categories = ["Pizza", "Burgers", "Kebab", "Desert", "Salad"];

  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey[800],
            ),
          )
        ],
      ),
      body: FutureBuilder(
          future: isLoading,
          initialData: null,
          builder: (BuildContext context, AsyncSnapshot snapshot1) {
            if (snapshot1.connectionState == ConnectionState.none ||
                snapshot1.connectionState == ConnectionState.waiting) {
              return Container();
            } else if (snapshot1.hasData) {
              return ProductItemlist();
            }
            return Container();
          }),
    );
  }

  Widget ProductItemlist() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Food Delivery',
                  style: TextStyle(
                      color: Colors.grey[80],
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) =>
                          makeCategory(title: categories[index], index: index)),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Free Delivery',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Provider.of<ProductItemProvider>(context,
                              listen: false)
                          .listOfProducts
                          .length +
                      (Provider.of<ProductItemProvider>(context, listen: true)
                              .paginationLoading
                          ? 0
                          : 1),
                  itemBuilder: (context, index) {
                    // request more data when the user has reached the trigger point.
                    if (index ==
                        Provider.of<ProductItemProvider>(context, listen: false)
                                .listOfProducts
                                .length -
                            5) {
                      Future.delayed(Duration(seconds: 2));
                      print("fetch data call");
                      Provider.of<ProductItemProvider>(context, listen: false)
                          .getAllProducts();
                      Future.delayed(Duration(seconds: 2));
                    }

                    if (index ==
                        Provider.of<ProductItemProvider>(context, listen: true)
                            .listOfProducts
                            .length) {
                      return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(),
                          ));
                    }

                    return makeItem(
                        image: Provider.of<ProductItemProvider>(context,
                                listen: false)
                            .listOfProducts[index]
                            .productImage,
                        isFavorite: Provider.of<ProductItemProvider>(context,
                                listen: false)
                            .listOfProducts[index]
                            .unitId,
                        index: index,
                        price: Provider.of<ProductItemProvider>(context,
                                listen: false)
                            .listOfProducts[index]
                            .price,
                        productName: Provider.of<ProductItemProvider>(context,
                                listen: false)
                            .listOfProducts[index]
                            .name);
                  }),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  Widget makeCategory({title, index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
      child: AnimatedContainer(
        width: 120,
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color:
              selectedCategory == index ? Colors.yellow[700] : Colors.grey[300],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color:
                    selectedCategory == index ? Colors.black : Colors.grey[700],
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, isFavorite, index, price, productName}) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.5 / 1,
          child: GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  )),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                        LinearGradient(begin: Alignment.bottomCenter, stops: [
                      .2,
                      .9
                    ], colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.3),
                    ])),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    width: 1.5,
                                    color: isFavorite
                                        ? Colors.red
                                        : Colors.transparent,
                                  )),
                              child: isFavorite
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    )),
                        ),
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "\$ $price??0",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "$productName",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
