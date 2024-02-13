import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/my_activity_screen/models/my_activity_model.dart';/// A controller class for the MyActivityScreen.
///
/// This class manages the state of the MyActivityScreen, including the
/// current myActivityModelObj
class MyActivityController extends GetxController {Rx<MyActivityModel> myActivityModelObj = MyActivityModel().obs;

 }
