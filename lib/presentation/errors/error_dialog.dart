import 'package:flutter/material.dart';

Future showError(BuildContext context) {
  return showDialog(
      context: context,
      builder: (_) {
        return const Text('An error occurred');
      });
}
