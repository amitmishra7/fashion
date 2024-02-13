import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/image_search_screen/models/image_search_model.dart';

/// A controller class for the ImageSearchScreen.
///
/// This class manages the state of the ImageSearchScreen, including the
/// current imageSearchModelObj
class ImageSearchController extends GetxController {
  Rx<ImageSearchModel> imageSearchModelObj = ImageSearchModel().obs;
}
