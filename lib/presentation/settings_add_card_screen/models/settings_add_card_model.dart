import '../../../core/app_export.dart';import 'cardcomponent_item_model.dart';/// This class defines the variables used in the [settings_add_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsAddCardModel {Rx<List<CardcomponentItemModel>> cardcomponentItemList = Rx([CardcomponentItemModel(cardImage:ImageConstant.imgMastercard.obs,closeImage:ImageConstant.imgCloseIndigo50.obs,cardNumberText: "****  ****  **** ".obs,cardExpiryText: "1579".obs,cardHolderNameText: "Amanda Morgan".obs,cardHolderDateText: "12/22".obs)]);

 }
