import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

void showCustomToast(String title,
    {@required Color? color, @required Color? textColor, double width: 300}) {
  BotToast.showCustomNotification(
    toastBuilder: (_) => Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: TextStyle(color: textColor),
        ),
      ),
    ),
  );
}

void showErrorToast(String title) {
  showCustomToast(title,
      color: Colors.deepOrange.shade400, textColor: customWhiteColor);
}

void showErrorNotification(String title) {
  BotToast.showNotification(
    title: (_) => Text(
      title,
      style: TextStyle(
        color: customWhiteColor,
      ),
    ),
    backgroundColor: Colors.deepOrange.shade500,
  );
}

void showSuccessToast(String title) {
  showCustomToast(title,
      color: Colors.green.shade400, textColor: customWhiteColor);
}
