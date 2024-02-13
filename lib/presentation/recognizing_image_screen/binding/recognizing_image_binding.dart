import '../controller/recognizing_image_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecognizingImageScreen.
///
/// This class ensures that the RecognizingImageController is created when the
/// RecognizingImageScreen is first loaded.
class RecognizingImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecognizingImageController());
  }
}
