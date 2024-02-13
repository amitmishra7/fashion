import '../controller/sizes_types_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SizesTypesScreen.
///
/// This class ensures that the SizesTypesController is created when the
/// SizesTypesScreen is first loaded.
class SizesTypesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SizesTypesController());
  }
}
