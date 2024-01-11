import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          actions: const [
            // Icon(
            //   Icons.access_alarm,
            //   color: Colors.white,
            // ),
            Icon(
              Icons.add_call,
              color: Colors.black,
            ),
          ],
          leading: const Icon(Icons.menu, color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "Home page",
            style: TextStyle(
              fontSize: 23,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: const Center(
          child: Text(
            "How to Flutter Developed 🤔!!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
