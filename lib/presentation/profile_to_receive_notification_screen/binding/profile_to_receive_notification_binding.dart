import '../controller/profile_to_receive_notification_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileToReceiveNotificationScreen.
///
/// This class ensures that the ProfileToReceiveNotificationController is created when the
/// ProfileToReceiveNotificationScreen is first loaded.
class ProfileToReceiveNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileToReceiveNotificationController());
  }
}
