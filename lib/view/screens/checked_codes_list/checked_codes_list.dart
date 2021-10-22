import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/checked_codes_history_controller.dart';
import 'package:safeport_admin/models/checked_codes_hostroy.dart';
import 'package:safeport_admin/utils/ui_itils/custom_loaders.dart';
import 'package:safeport_admin/utils/ui_itils/custom_overlay_widgets.dart';
import 'package:safeport_admin/view/screens/checked_codes_list/components/checked_code_detail.dart';
import 'package:safeport_admin/view/shared/custom_empty_widget.dart';

class CheckedCodesList extends StatelessWidget {
  final CheckedCodesHistoryController _checkedCodesHistoryController =
      Get.put(CheckedCodesHistoryController());
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          "Checked codes",
          style: theme.textTheme.headline6,
        ),
      ),
      body: Obx(() {
        if (_checkedCodesHistoryController.isLoading.value)
          showCustomLoader(context);
        else {
          BotToast.closeAllLoading();
        }
        return _checkedCodesHistoryController.checkedCodesHistory.length == 0
            ? CustomEmptyWidget()
            : Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.builder(
                    itemCount: _checkedCodesHistoryController
                        .checkedCodesHistory.length,
                    itemBuilder: (context, index) {
                      CheckedCodesHistory history =
                          _checkedCodesHistoryController
                              .checkedCodesHistory[index];
                      return Card(
                        child: ListTile(
                          onTap: () {
                            showCustomButtomSheet(CheckedCodeDetail(
                                theme: theme, history: history));
                          },
                          trailing: Icon(Icons.expand_more),
                          title: Text(
                            '${history.externalTravellerFirstname} ${history.externalTravellerLastname} ${history.externalTravellerOthername}',
                          ),
                          subtitle: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${history.laboratoryTestName}'),
                                  Text('${history.result}'),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${history.certificateId}'),
                                  Text('${history.country}'),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              );
      }),
    );
  }
}
