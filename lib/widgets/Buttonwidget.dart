import 'package:flutter/material.dart';

import '../utils/Toast.dart';

class Dialogbutton extends StatelessWidget {
  var action;
   Dialogbutton({Key? key, required this.action});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
      showToast('Button Clicked! ${action}');

    }
      , child:action);
  }
}
