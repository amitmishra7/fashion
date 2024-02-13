import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/start_screen/models/start_model.dart';/// A controller class for the StartScreen.
///
/// This class manages the state of the StartScreen, including the
/// current startModelObj
class StartController extends GetxController {Rx<StartModel> startModelObj = StartModel().obs;

@override void onReady() { Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.createAccountScreen,);}); } 
 }
