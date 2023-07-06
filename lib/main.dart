import 'package:album_sample/controller/DailogController.dart';
import 'package:album_sample/utils/Strings.dart';
import 'package:album_sample/widgets/CustomDailogWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final DialogController dialogController = Get.put(DialogController());
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title:  AppStrings.welcomeMessage,
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.apptitle) ,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              dialogController.openDialog(AppStrings.Dialogtitle,
                AppStrings.welcomeMessage,
                2,);
            },
            child: Text('open Dialog'),
          ),
        ),
      ),
    );
  }
}


