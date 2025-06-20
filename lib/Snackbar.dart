// lib/Snackbar.dart
import 'package:flutter/material.dart';

void ShowSuccessMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.green,
    ),
  );
}

void ShowErrorMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.red,
    ),
  );
}
