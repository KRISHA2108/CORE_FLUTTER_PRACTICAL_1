import 'package:flutter/material.dart';
import 'package:prectical_exam_e_commers_app/views/componets/products.dart';

import '../../utils/products_utils.dart';

Widget Categories({
  required Size size,
  required String category,
  required BuildContext context,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: allProducts
                .map(
                  (e) => e['category'] == category
                      ? products(
                          context: context,
                          size: size,
                          product: e,
                        )
                      : Container(),
                )
                .toList(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
