import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/image_search_results_screen/models/image_search_results_model.dart';/// A controller class for the ImageSearchResultsScreen.
///
/// This class manages the state of the ImageSearchResultsScreen, including the
/// current imageSearchResultsModelObj
class ImageSearchResultsController extends GetxController {Rx<ImageSearchResultsModel> imageSearchResultsModelObj = ImageSearchResultsModel().obs;

 }
