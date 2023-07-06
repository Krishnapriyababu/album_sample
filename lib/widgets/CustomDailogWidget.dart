import 'package:flutter/material.dart';


import 'Buttonwidget.dart';


class CustomDialogWidget extends StatelessWidget {
  var title;
  var body;
  var type;

   CustomDialogWidget({Key? key,required this.title,required this.body, required this.type });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:  Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(16),
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
                          title,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),
                    Text(body,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        type == 'OK' ?
                        Row(
                    children: [
                      Dialogbutton( action: 'OK'),


                      // Expanded(
                      //   child:
                      //   ElevatedButton(
                      //     child: const Text(
                      //       'NO',
                      //     ),
                      //     style: ElevatedButton.styleFrom(
                      //       minimumSize: const Size(0, 45),
                      //       primary: Colors.amber,
                      //       onPrimary: const Color(0xFFFFFFFF),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(8),
                      //       ),
                      //     ),
                      //     onPressed: () {},
                      //   ),
                      // ),
                      // Expanded(
                      //   child: ElevatedButton(
                      //     child: const Text(
                      //       'YES',
                      //     ),
                      //     style: ElevatedButton.styleFrom(
                      //       minimumSize: const Size(0, 45),
                      //       primary: Colors.amber,
                      //       onPrimary: const Color(0xFFFFFFFF),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(8),
                      //       ),
                      //     ),
                      //     onPressed: () {},
                      //   ),
                      // ),
                    ],
                  ) :

                      Row(
                      children: [
                      Dialogbutton( action: 'OK'),
                  const SizedBox(width: 10),
                  ],
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
