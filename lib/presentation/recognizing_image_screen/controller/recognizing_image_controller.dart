import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/recognizing_image_screen/models/recognizing_image_model.dart';

/// A controller class for the RecognizingImageScreen.
///
/// This class manages the state of the RecognizingImageScreen, including the
/// current recognizingImageModelObj
class RecognizingImageController extends GetxController {
  Rx<RecognizingImageModel> recognizingImageModelObj =
      RecognizingImageModel().obs;
}
