import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/recently_viewed_date_screen/models/recently_viewed_date_model.dart';import 'package:calendar_date_picker2/calendar_date_picker2.dart';/// A controller class for the RecentlyViewedDateScreen.
///
/// This class manages the state of the RecentlyViewedDateScreen, including the
/// current recentlyViewedDateModelObj
class RecentlyViewedDateController extends GetxController {Rx<RecentlyViewedDateModel> recentlyViewedDateModelObj = RecentlyViewedDateModel().obs;

Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

 }
