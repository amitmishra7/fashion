import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/delivery_attempt_notification_bottomsheet/models/delivery_attempt_notification_model.dart';

/// A controller class for the DeliveryAttemptNotificationBottomsheet.
///
/// This class manages the state of the DeliveryAttemptNotificationBottomsheet, including the
/// current deliveryAttemptNotificationModelObj
class DeliveryAttemptNotificationController extends GetxController {
  Rx<DeliveryAttemptNotificationModel> deliveryAttemptNotificationModelObj =
      DeliveryAttemptNotificationModel().obs;
}
