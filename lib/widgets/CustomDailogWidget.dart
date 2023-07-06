import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/DailogController.dart';

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Alert Dialog',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('this is a custom dialog'),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed:(){
                  Get.find<DialogController>().closeDialog();
                },
                child: Text('close'),
            ),
          ],

        ),
      ),

    );
  }
}
