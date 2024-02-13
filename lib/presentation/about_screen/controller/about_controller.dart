import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/about_screen/models/about_model.dart';

/// A controller class for the AboutScreen.
///
/// This class manages the state of the AboutScreen, including the
/// current aboutModelObj
class AboutController extends GetxController {
  Rx<AboutModel> aboutModelObj = AboutModel().obs;
}
