import 'package:get/get.dart';

class DialogController extends GetxController {
  final isDialogOpen = false.obs;

  void openDialog() {
    isDialogOpen.value = true;
  }

  void closeDialog() {
    isDialogOpen.value = false;
  }
}