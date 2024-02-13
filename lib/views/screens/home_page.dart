import 'package:flutter/material.dart';
import 'package:prectical_exam_e_commers_app/utils/products_utils.dart';
import 'package:prectical_exam_e_commers_app/views/componets/category_views.dart';
import 'package:prectical_exam_e_commers_app/views/componets/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                    "https://images2.alphacoders.com/132/1325726.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          leading: Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(
              Icons.add_shopping_cart_rounded,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: allCategories
                  .map(
                    (e) => Categories(
                      context: context,
                      size: size,
                      category: e,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
