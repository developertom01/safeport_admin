import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void showCustomButtomSheet(Widget content) {
  Get.bottomSheet(
    content,
    // isScrollControlled: true,
    enableDrag: true,
  );
}
