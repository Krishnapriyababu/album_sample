import 'package:album_sample/utils/Strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/DailogController.dart';
import 'Buttonwidget.dart';


class CustomDialogWidget extends StatelessWidget {
  var title;
  var body;
  var count;
  final DialogController dialogController = Get.find<DialogController>();


  CustomDialogWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:  Colors.transparent,
      child: Container(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Material(
                    color:Colors.transparent ,
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          dialogController.dialogTitle.value,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),
                    Text(dialogController.dialogBody.value,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                      //  Buttons
                  Obx(
                    () =>dialogController.buttonCount.value == 1 ?
                       Dialogbutton(
                         onPressed: dialogController.closeDialog,
                         buttonText: AppStrings.buttonok_text,
                       )
                      : Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Expanded(
                             child: Dialogbutton(
                               onPressed: dialogController.closeDialog,
                               buttonText: AppStrings.buttoncancel_text,
                             ),
                  ),
                           SizedBox(width: 10),
                           Expanded(
                             child: Dialogbutton(
                               onPressed: dialogController.closeDialog,
                               buttonText: AppStrings.buttonok_text,
                             ),
                           ),
                         ],

                       ),
                       ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
