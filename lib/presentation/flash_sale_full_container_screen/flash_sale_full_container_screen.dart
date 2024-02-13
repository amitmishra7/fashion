import 'controller/flash_sale_full_container_controller.dart';import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class FlashSaleFullContainerScreen extends GetWidget<FlashSaleFullContainerController> {const FlashSaleFullContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.flashSaleFullPage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Settings: return AppRoutes.flashSaleFullPage; case BottomBarEnum.Favorite: return AppRoutes.wishlistPage; case BottomBarEnum.User: return "/"; case BottomBarEnum.Cart: return AppRoutes.cartPage; case BottomBarEnum.Lock: return AppRoutes.fullProfilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.flashSaleFullPage: return FlashSaleFullPage(); case AppRoutes.wishlistPage: return WishlistPage(); case AppRoutes.cartPage: return CartPage(); case AppRoutes.fullProfilePage: return FullProfilePage(); default: return DefaultWidget();} } 
 }
