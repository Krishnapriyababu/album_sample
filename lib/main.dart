import 'package:album_sample/controller/DailogController.dart';
import 'package:album_sample/widgets/CustomDailogWidget.dart';
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
              Get.dialog(CustomDialogWidget( title: 'hi',body: 'body...............',type: 'OK'));
            },
            child: Text('open Dialog'),
          ),
        ),
      ),
    );
  }
}


