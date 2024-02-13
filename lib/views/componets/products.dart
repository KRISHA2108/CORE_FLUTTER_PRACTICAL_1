import 'package:flutter/material.dart';
import 'package:prectical_exam_e_commers_app/utils/routes_utils.dart';

Widget products({
  required Size size,
  required Map<String, dynamic> product,
  required BuildContext context,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        product['title'],
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      //ProductCard
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            Routes.detailPage,
            arguments: product,
          );
        },
        child: Container(
          height: size.height * 0.5,
          width: size.width * 0.7,
          margin: const EdgeInsets.only(
            right: 8,
            bottom: 10,
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    image: NetworkImage(
                      product['thumbnail'],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                product['title'],
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                product['category'],
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    product['brand'],
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      product['description'],
                      style: TextStyle(color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ], //Label
  );
}
