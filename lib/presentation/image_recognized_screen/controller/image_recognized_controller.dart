import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/image_recognized_screen/models/image_recognized_model.dart';

/// A controller class for the ImageRecognizedScreen.
///
/// This class manages the state of the ImageRecognizedScreen, including the
/// current imageRecognizedModelObj
class ImageRecognizedController extends GetxController {
  Rx<ImageRecognizedModel> imageRecognizedModelObj = ImageRecognizedModel().obs;
}
