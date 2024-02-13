import '../../../core/app_export.dart';import 'currencyselector_item_model.dart';/// This class defines the variables used in the [choose_your_currency_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseYourCurrencyModel {Rx<List<CurrencyselectorItemModel>> currencyselectorItemList = Rx([CurrencyselectorItemModel(title: " USD".obs,image:ImageConstant.imgIconFeatherCheck.obs),CurrencyselectorItemModel(title: "€ EURO".obs),CurrencyselectorItemModel(title: "₫ VND".obs),CurrencyselectorItemModel(title: "₽ RUB".obs)]);

 }
