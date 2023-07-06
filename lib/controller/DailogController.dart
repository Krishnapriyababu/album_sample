import 'package:get/get.dart';

import '../widgets/CustomDailogWidget.dart';

class DialogController extends GetxController {
  final RxString dialogTitle = ''.obs;
  final RxString dialogBody = ''.obs;
  final RxInt buttonCount = 0.obs;

  void openDialog(String title, String body, int count) {
  dialogTitle.value = title;
  dialogBody.value = body;
  buttonCount.value = count;
  Get.dialog(CustomDialogWidget());
  }

  void closeDialog() {
  Get.back();
  }
  }

