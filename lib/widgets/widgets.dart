import 'package:flutter/material.dart';

Card textField(String text) {
  return Card(
    child: TextField(
      decoration: InputDecoration(
        hintText: text,
      ),
    ),
  );
}
