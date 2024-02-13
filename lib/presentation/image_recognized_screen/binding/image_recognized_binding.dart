import '../controller/image_recognized_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageRecognizedScreen.
///
/// This class ensures that the ImageRecognizedController is created when the
/// ImageRecognizedScreen is first loaded.
class ImageRecognizedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageRecognizedController());
  }
}
