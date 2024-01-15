import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal.shade800,
          title: const Text(
            " 🛍️ List of Fruits",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "🍎 Apple\n",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                text: "🍇 Grapes\n",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                text: "🍒 Cherry\n",
                style: TextStyle(
                  color: Colors.purple.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                text: "🍓 Strawberry\n",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                text: "🥭 Mango\n",
                style: TextStyle(
                  color: Colors.yellow.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                text: "🍍Pineapple\n",
                style: TextStyle(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                text: "🍋 Lemon\n",
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                text: "🍉 Watermelon\n",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                text: "🥥 Coconut",
                style: TextStyle(
                  color: Colors.brown.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}
