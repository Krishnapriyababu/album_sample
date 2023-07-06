import 'package:album_sample/controller/DailogController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Custom dialog',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Dialog Example') ,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Get.dialog(
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Material(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text(
                                  "Title Text",
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  "Message Text",
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                //Buttons
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        child: const Text(
                                          'NO',
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(0, 45),
                                          primary: Colors.amber,
                                          onPrimary: const Color(0xFFFFFFFF),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: ElevatedButton(
                                        child: const Text(
                                          'YES',
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(0, 45),
                                          primary: Colors.amber,
                                          onPrimary: const Color(0xFFFFFFFF),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
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
              );
            },
            child: Text('open Dialog'),
          ),
        ),
      ),
    );
  }
}


