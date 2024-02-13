import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/history_screen/models/history_model.dart';/// A controller class for the HistoryScreen.
///
/// This class manages the state of the HistoryScreen, including the
/// current historyModelObj
class HistoryController extends GetxController {Rx<HistoryModel> historyModelObj = HistoryModel().obs;

 }
