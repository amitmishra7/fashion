import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/sizes_types_screen/models/sizes_types_model.dart';

/// A controller class for the SizesTypesScreen.
///
/// This class manages the state of the SizesTypesScreen, including the
/// current sizesTypesModelObj
class SizesTypesController extends GetxController {
  Rx<SizesTypesModel> sizesTypesModelObj = SizesTypesModel().obs;
}
