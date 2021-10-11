import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

void showCustomLoader(BuildContext context) {
  BotToast.showCustomLoading(
    toastBuilder: (_) => Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: customWhiteColor.withOpacity(0.4),
      ),
      child: Center(
        child: Theme.of(context).platform == TargetPlatform.iOS
            ? CupertinoActivityIndicator(
                radius: 20,
              )
            : SpinKitCircle(
                color: customBlueColor,
              ),
      ),
    ),
  );
}
