import 'package:flutter/material.dart';

import '../utils/Toast.dart';

class Dialogbutton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const Dialogbutton({
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}

