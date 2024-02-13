import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/filter_screen/models/filter_model.dart';/// A controller class for the FilterScreen.
///
/// This class manages the state of the FilterScreen, including the
/// current filterModelObj
class FilterController extends GetxController {Rx<FilterModel> filterModelObj = FilterModel().obs;

 }
