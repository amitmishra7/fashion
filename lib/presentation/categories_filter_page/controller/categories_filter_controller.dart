import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/categories_filter_page/models/categories_filter_model.dart';/// A controller class for the CategoriesFilterPage.
///
/// This class manages the state of the CategoriesFilterPage, including the
/// current categoriesFilterModelObj
class CategoriesFilterController extends GetxController {CategoriesFilterController(this.categoriesFilterModelObj);

Rx<CategoriesFilterModel> categoriesFilterModelObj;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

onSelected(dynamic value) { for (var element in categoriesFilterModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} categoriesFilterModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in categoriesFilterModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} categoriesFilterModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in categoriesFilterModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} categoriesFilterModelObj.value.dropdownItemList2.refresh(); } 
 }
