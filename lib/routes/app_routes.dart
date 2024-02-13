import 'package:amit_s_application2/presentation/start_screen/start_screen.dart';
import 'package:amit_s_application2/presentation/start_screen/binding/start_binding.dart';
import 'package:amit_s_application2/presentation/create_account_screen/create_account_screen.dart';
import 'package:amit_s_application2/presentation/create_account_screen/binding/create_account_binding.dart';
import 'package:amit_s_application2/presentation/login_screen/login_screen.dart';
import 'package:amit_s_application2/presentation/login_screen/binding/login_binding.dart';
import 'package:amit_s_application2/presentation/password_screen/password_screen.dart';
import 'package:amit_s_application2/presentation/password_screen/binding/password_binding.dart';
import 'package:amit_s_application2/presentation/password_typing_screen/password_typing_screen.dart';
import 'package:amit_s_application2/presentation/password_typing_screen/binding/password_typing_binding.dart';
import 'package:amit_s_application2/presentation/wrong_password_screen/wrong_password_screen.dart';
import 'package:amit_s_application2/presentation/wrong_password_screen/binding/wrong_password_binding.dart';
import 'package:amit_s_application2/presentation/password_recovery_screen/password_recovery_screen.dart';
import 'package:amit_s_application2/presentation/password_recovery_screen/binding/password_recovery_binding.dart';
import 'package:amit_s_application2/presentation/password_recovery_code_screen/password_recovery_code_screen.dart';
import 'package:amit_s_application2/presentation/password_recovery_code_screen/binding/password_recovery_code_binding.dart';
import 'package:amit_s_application2/presentation/new_password_screen/new_password_screen.dart';
import 'package:amit_s_application2/presentation/new_password_screen/binding/new_password_binding.dart';
import 'package:amit_s_application2/presentation/hello_card_screen/hello_card_screen.dart';
import 'package:amit_s_application2/presentation/hello_card_screen/binding/hello_card_binding.dart';
import 'package:amit_s_application2/presentation/ready_card_screen/ready_card_screen.dart';
import 'package:amit_s_application2/presentation/ready_card_screen/binding/ready_card_binding.dart';
import 'package:amit_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:amit_s_application2/presentation/profile_screen/binding/profile_binding.dart';
import 'package:amit_s_application2/presentation/shop_screen/shop_screen.dart';
import 'package:amit_s_application2/presentation/shop_screen/binding/shop_binding.dart';
import 'package:amit_s_application2/presentation/flash_sale_live_screen/flash_sale_live_screen.dart';
import 'package:amit_s_application2/presentation/flash_sale_live_screen/binding/flash_sale_live_binding.dart';
import 'package:amit_s_application2/presentation/flash_sale_screen/flash_sale_screen.dart';
import 'package:amit_s_application2/presentation/flash_sale_screen/binding/flash_sale_binding.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_container_screen/flash_sale_full_container_screen.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_container_screen/binding/flash_sale_full_container_binding.dart';
import 'package:amit_s_application2/presentation/live_screen/live_screen.dart';
import 'package:amit_s_application2/presentation/live_screen/binding/live_binding.dart';
import 'package:amit_s_application2/presentation/story_dots_screen/story_dots_screen.dart';
import 'package:amit_s_application2/presentation/story_dots_screen/binding/story_dots_binding.dart';
import 'package:amit_s_application2/presentation/story_dots_tap_screen/story_dots_tap_screen.dart';
import 'package:amit_s_application2/presentation/story_dots_tap_screen/binding/story_dots_tap_binding.dart';
import 'package:amit_s_application2/presentation/story_product_style_one_screen/story_product_style_one_screen.dart';
import 'package:amit_s_application2/presentation/story_product_style_one_screen/binding/story_product_style_one_binding.dart';
import 'package:amit_s_application2/presentation/story_banner_screen/story_banner_screen.dart';
import 'package:amit_s_application2/presentation/story_banner_screen/binding/story_banner_binding.dart';
import 'package:amit_s_application2/presentation/story_product_style_two_screen/story_product_style_two_screen.dart';
import 'package:amit_s_application2/presentation/story_product_style_two_screen/binding/story_product_style_two_binding.dart';
import 'package:amit_s_application2/presentation/shop_clothing_screen/shop_clothing_screen.dart';
import 'package:amit_s_application2/presentation/shop_clothing_screen/binding/shop_clothing_binding.dart';
import 'package:amit_s_application2/presentation/shop_clothing_on_scroll_screen/shop_clothing_on_scroll_screen.dart';
import 'package:amit_s_application2/presentation/shop_clothing_on_scroll_screen/binding/shop_clothing_on_scroll_binding.dart';
import 'package:amit_s_application2/presentation/categories_filter_tab_container_screen/categories_filter_tab_container_screen.dart';
import 'package:amit_s_application2/presentation/categories_filter_tab_container_screen/binding/categories_filter_tab_container_binding.dart';
import 'package:amit_s_application2/presentation/search_screen/search_screen.dart';
import 'package:amit_s_application2/presentation/search_screen/binding/search_binding.dart';
import 'package:amit_s_application2/presentation/image_search_screen/image_search_screen.dart';
import 'package:amit_s_application2/presentation/image_search_screen/binding/image_search_binding.dart';
import 'package:amit_s_application2/presentation/recognizing_image_screen/recognizing_image_screen.dart';
import 'package:amit_s_application2/presentation/recognizing_image_screen/binding/recognizing_image_binding.dart';
import 'package:amit_s_application2/presentation/image_recognized_screen/image_recognized_screen.dart';
import 'package:amit_s_application2/presentation/image_recognized_screen/binding/image_recognized_binding.dart';
import 'package:amit_s_application2/presentation/image_search_results_screen/image_search_results_screen.dart';
import 'package:amit_s_application2/presentation/image_search_results_screen/binding/image_search_results_binding.dart';
import 'package:amit_s_application2/presentation/filter_screen/filter_screen.dart';
import 'package:amit_s_application2/presentation/filter_screen/binding/filter_binding.dart';
import 'package:amit_s_application2/presentation/product_screen/product_screen.dart';
import 'package:amit_s_application2/presentation/product_screen/binding/product_binding.dart';
import 'package:amit_s_application2/presentation/product_sale_screen/product_sale_screen.dart';
import 'package:amit_s_application2/presentation/product_sale_screen/binding/product_sale_binding.dart';
import 'package:amit_s_application2/presentation/product_full_screen/product_full_screen.dart';
import 'package:amit_s_application2/presentation/product_full_screen/binding/product_full_binding.dart';
import 'package:amit_s_application2/presentation/product_variations_screen/product_variations_screen.dart';
import 'package:amit_s_application2/presentation/product_variations_screen/binding/product_variations_binding.dart';
import 'package:amit_s_application2/presentation/reviews_screen/reviews_screen.dart';
import 'package:amit_s_application2/presentation/reviews_screen/binding/reviews_binding.dart';
import 'package:amit_s_application2/presentation/wishlist_empty_screen/wishlist_empty_screen.dart';
import 'package:amit_s_application2/presentation/wishlist_empty_screen/binding/wishlist_empty_binding.dart';
import 'package:amit_s_application2/presentation/recently_viewed_screen/recently_viewed_screen.dart';
import 'package:amit_s_application2/presentation/recently_viewed_screen/binding/recently_viewed_binding.dart';
import 'package:amit_s_application2/presentation/recently_viewed_date_screen/recently_viewed_date_screen.dart';
import 'package:amit_s_application2/presentation/recently_viewed_date_screen/binding/recently_viewed_date_binding.dart';
import 'package:amit_s_application2/presentation/recently_viewed_date_chosen_tab_container_screen/recently_viewed_date_chosen_tab_container_screen.dart';
import 'package:amit_s_application2/presentation/recently_viewed_date_chosen_tab_container_screen/binding/recently_viewed_date_chosen_tab_container_binding.dart';
import 'package:amit_s_application2/presentation/cart_empty_shown_from_wishlist_screen/cart_empty_shown_from_wishlist_screen.dart';
import 'package:amit_s_application2/presentation/cart_empty_shown_from_wishlist_screen/binding/cart_empty_shown_from_wishlist_binding.dart';
import 'package:amit_s_application2/presentation/cart_empty_shown_from_popular_screen/cart_empty_shown_from_popular_screen.dart';
import 'package:amit_s_application2/presentation/cart_empty_shown_from_popular_screen/binding/cart_empty_shown_from_popular_binding.dart';
import 'package:amit_s_application2/presentation/payment_screen/payment_screen.dart';
import 'package:amit_s_application2/presentation/payment_screen/binding/payment_binding.dart';
import 'package:amit_s_application2/presentation/voucher_added_screen/voucher_added_screen.dart';
import 'package:amit_s_application2/presentation/voucher_added_screen/binding/voucher_added_binding.dart';
import 'package:amit_s_application2/presentation/to_recieve_screen/to_recieve_screen.dart';
import 'package:amit_s_application2/presentation/to_recieve_screen/binding/to_recieve_binding.dart';
import 'package:amit_s_application2/presentation/to_receive_progress_screen/to_receive_progress_screen.dart';
import 'package:amit_s_application2/presentation/to_receive_progress_screen/binding/to_receive_progress_binding.dart';
import 'package:amit_s_application2/presentation/to_receive_attempt_is_not_successful_screen/to_receive_attempt_is_not_successful_screen.dart';
import 'package:amit_s_application2/presentation/to_receive_attempt_is_not_successful_screen/binding/to_receive_attempt_is_not_successful_binding.dart';
import 'package:amit_s_application2/presentation/profile_to_receive_notification_screen/profile_to_receive_notification_screen.dart';
import 'package:amit_s_application2/presentation/profile_to_receive_notification_screen/binding/profile_to_receive_notification_binding.dart';
import 'package:amit_s_application2/presentation/delivered_screen/delivered_screen.dart';
import 'package:amit_s_application2/presentation/delivered_screen/binding/delivered_binding.dart';
import 'package:amit_s_application2/presentation/my_activity_screen/my_activity_screen.dart';
import 'package:amit_s_application2/presentation/my_activity_screen/binding/my_activity_binding.dart';
import 'package:amit_s_application2/presentation/history_screen/history_screen.dart';
import 'package:amit_s_application2/presentation/history_screen/binding/history_binding.dart';
import 'package:amit_s_application2/presentation/chat_starting_question_one_screen/chat_starting_question_one_screen.dart';
import 'package:amit_s_application2/presentation/chat_starting_question_one_screen/binding/chat_starting_question_one_binding.dart';
import 'package:amit_s_application2/presentation/chat_starting_question_two_screen/chat_starting_question_two_screen.dart';
import 'package:amit_s_application2/presentation/chat_starting_question_two_screen/binding/chat_starting_question_two_binding.dart';
import 'package:amit_s_application2/presentation/chat_starting_question_three_screen/chat_starting_question_three_screen.dart';
import 'package:amit_s_application2/presentation/chat_starting_question_three_screen/binding/chat_starting_question_three_binding.dart';
import 'package:amit_s_application2/presentation/chat_connecting_with_an_agent_screen/chat_connecting_with_an_agent_screen.dart';
import 'package:amit_s_application2/presentation/chat_connecting_with_an_agent_screen/binding/chat_connecting_with_an_agent_binding.dart';
import 'package:amit_s_application2/presentation/chat_agent_is_typing_screen/chat_agent_is_typing_screen.dart';
import 'package:amit_s_application2/presentation/chat_agent_is_typing_screen/binding/chat_agent_is_typing_binding.dart';
import 'package:amit_s_application2/presentation/chat_hello_screen/chat_hello_screen.dart';
import 'package:amit_s_application2/presentation/chat_hello_screen/binding/chat_hello_binding.dart';
import 'package:amit_s_application2/presentation/chat_response_screen/chat_response_screen.dart';
import 'package:amit_s_application2/presentation/chat_response_screen/binding/chat_response_binding.dart';
import 'package:amit_s_application2/presentation/chat_voucher_screen/chat_voucher_screen.dart';
import 'package:amit_s_application2/presentation/chat_voucher_screen/binding/chat_voucher_binding.dart';
import 'package:amit_s_application2/presentation/chat_messaging_one_screen/chat_messaging_one_screen.dart';
import 'package:amit_s_application2/presentation/chat_messaging_one_screen/binding/chat_messaging_one_binding.dart';
import 'package:amit_s_application2/presentation/chat_messaging_two_screen/chat_messaging_two_screen.dart';
import 'package:amit_s_application2/presentation/chat_messaging_two_screen/binding/chat_messaging_two_binding.dart';
import 'package:amit_s_application2/presentation/chat_go_to_the_bottom_screen/chat_go_to_the_bottom_screen.dart';
import 'package:amit_s_application2/presentation/chat_go_to_the_bottom_screen/binding/chat_go_to_the_bottom_binding.dart';
import 'package:amit_s_application2/presentation/chat_messaging_three_screen/chat_messaging_three_screen.dart';
import 'package:amit_s_application2/presentation/chat_messaging_three_screen/binding/chat_messaging_three_binding.dart';
import 'package:amit_s_application2/presentation/profile_reward_screen/profile_reward_screen.dart';
import 'package:amit_s_application2/presentation/profile_reward_screen/binding/profile_reward_binding.dart';
import 'package:amit_s_application2/presentation/rewards_progress_tab_container_screen/rewards_progress_tab_container_screen.dart';
import 'package:amit_s_application2/presentation/rewards_progress_tab_container_screen/binding/rewards_progress_tab_container_binding.dart';
import 'package:amit_s_application2/presentation/profile_voucher_reminder_screen/profile_voucher_reminder_screen.dart';
import 'package:amit_s_application2/presentation/profile_voucher_reminder_screen/binding/profile_voucher_reminder_binding.dart';
import 'package:amit_s_application2/presentation/settings_screen/settings_screen.dart';
import 'package:amit_s_application2/presentation/settings_screen/binding/settings_binding.dart';
import 'package:amit_s_application2/presentation/settings_full_screen/settings_full_screen.dart';
import 'package:amit_s_application2/presentation/settings_full_screen/binding/settings_full_binding.dart';
import 'package:amit_s_application2/presentation/settings_profile_screen/settings_profile_screen.dart';
import 'package:amit_s_application2/presentation/settings_profile_screen/binding/settings_profile_binding.dart';
import 'package:amit_s_application2/presentation/settings_add_card_screen/settings_add_card_screen.dart';
import 'package:amit_s_application2/presentation/settings_add_card_screen/binding/settings_add_card_binding.dart';
import 'package:amit_s_application2/presentation/payment_methods_history_screen/payment_methods_history_screen.dart';
import 'package:amit_s_application2/presentation/payment_methods_history_screen/binding/payment_methods_history_binding.dart';
import 'package:amit_s_application2/presentation/payment_methods_history_2_cards_screen/payment_methods_history_2_cards_screen.dart';
import 'package:amit_s_application2/presentation/payment_methods_history_2_cards_screen/binding/payment_methods_history_2_cards_binding.dart';
import 'package:amit_s_application2/presentation/shipping_address_screen/shipping_address_screen.dart';
import 'package:amit_s_application2/presentation/shipping_address_screen/binding/shipping_address_binding.dart';
import 'package:amit_s_application2/presentation/edit_shipping_address1_screen/edit_shipping_address1_screen.dart';
import 'package:amit_s_application2/presentation/edit_shipping_address1_screen/binding/edit_shipping_address1_binding.dart';
import 'package:amit_s_application2/presentation/choose_your_country_screen/choose_your_country_screen.dart';
import 'package:amit_s_application2/presentation/choose_your_country_screen/binding/choose_your_country_binding.dart';
import 'package:amit_s_application2/presentation/choose_your_language_screen/choose_your_language_screen.dart';
import 'package:amit_s_application2/presentation/choose_your_language_screen/binding/choose_your_language_binding.dart';
import 'package:amit_s_application2/presentation/choose_your_currency_screen/choose_your_currency_screen.dart';
import 'package:amit_s_application2/presentation/choose_your_currency_screen/binding/choose_your_currency_binding.dart';
import 'package:amit_s_application2/presentation/sizes_types_screen/sizes_types_screen.dart';
import 'package:amit_s_application2/presentation/sizes_types_screen/binding/sizes_types_binding.dart';
import 'package:amit_s_application2/presentation/about_screen/about_screen.dart';
import 'package:amit_s_application2/presentation/about_screen/binding/about_binding.dart';
import 'package:amit_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:amit_s_application2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String loginScreen = '/login_screen';

  static const String passwordScreen = '/password_screen';

  static const String passwordTypingScreen = '/password_typing_screen';

  static const String wrongPasswordScreen = '/wrong_password_screen';

  static const String passwordRecoveryScreen = '/password_recovery_screen';

  static const String passwordRecoveryCodeScreen =
      '/password_recovery_code_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String helloCardScreen = '/hello_card_screen';

  static const String readyCardScreen = '/ready_card_screen';

  static const String profileScreen = '/profile_screen';

  static const String fullProfilePage = '/full_profile_page';

  static const String shopScreen = '/shop_screen';

  static const String flashSaleLiveScreen = '/flash_sale_live_screen';

  static const String flashSaleScreen = '/flash_sale_screen';

  static const String flashSaleFullPage = '/flash_sale_full_page';

  static const String flashSaleFullContainerScreen =
      '/flash_sale_full_container_screen';

  static const String liveScreen = '/live_screen';

  static const String storyDotsScreen = '/story_dots_screen';

  static const String storyDotsTapScreen = '/story_dots_tap_screen';

  static const String storyProductStyleOneScreen =
      '/story_product_style_one_screen';

  static const String storyBannerScreen = '/story_banner_screen';

  static const String storyProductStyleTwoScreen =
      '/story_product_style_two_screen';

  static const String shopClothingScreen = '/shop_clothing_screen';

  static const String shopClothingOnScrollScreen =
      '/shop_clothing_on_scroll_screen';

  static const String categoriesFilterPage = '/categories_filter_page';

  static const String categoriesFilterTabContainerScreen =
      '/categories_filter_tab_container_screen';

  static const String searchScreen = '/search_screen';

  static const String imageSearchScreen = '/image_search_screen';

  static const String recognizingImageScreen = '/recognizing_image_screen';

  static const String imageRecognizedScreen = '/image_recognized_screen';

  static const String imageSearchResultsScreen = '/image_search_results_screen';

  static const String filterScreen = '/filter_screen';

  static const String productScreen = '/product_screen';

  static const String productSaleScreen = '/product_sale_screen';

  static const String productFullScreen = '/product_full_screen';

  static const String productVariationsScreen = '/product_variations_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String wishlistPage = '/wishlist_page';

  static const String wishlistEmptyScreen = '/wishlist_empty_screen';

  static const String recentlyViewedScreen = '/recently_viewed_screen';

  static const String recentlyViewedDateScreen = '/recently_viewed_date_screen';

  static const String recentlyViewedDateChosenPage =
      '/recently_viewed_date_chosen_page';

  static const String recentlyViewedDateChosenTabContainerScreen =
      '/recently_viewed_date_chosen_tab_container_screen';

  static const String cartPage = '/cart_page';

  static const String cartEmptyShownFromWishlistScreen =
      '/cart_empty_shown_from_wishlist_screen';

  static const String cartEmptyShownFromPopularScreen =
      '/cart_empty_shown_from_popular_screen';

  static const String paymentScreen = '/payment_screen';

  static const String voucherAddedScreen = '/voucher_added_screen';

  static const String toRecieveScreen = '/to_recieve_screen';

  static const String toReceiveProgressScreen = '/to_receive_progress_screen';

  static const String toReceiveAttemptIsNotSuccessfulScreen =
      '/to_receive_attempt_is_not_successful_screen';

  static const String profileToReceiveNotificationScreen =
      '/profile_to_receive_notification_screen';

  static const String deliveredScreen = '/delivered_screen';

  static const String myActivityScreen = '/my_activity_screen';

  static const String historyScreen = '/history_screen';

  static const String chatStartingQuestionOneScreen =
      '/chat_starting_question_one_screen';

  static const String chatStartingQuestionTwoScreen =
      '/chat_starting_question_two_screen';

  static const String chatStartingQuestionThreeScreen =
      '/chat_starting_question_three_screen';

  static const String chatConnectingWithAnAgentScreen =
      '/chat_connecting_with_an_agent_screen';

  static const String chatAgentIsTypingScreen = '/chat_agent_is_typing_screen';

  static const String chatHelloScreen = '/chat_hello_screen';

  static const String chatResponseScreen = '/chat_response_screen';

  static const String chatVoucherScreen = '/chat_voucher_screen';

  static const String chatMessagingOneScreen = '/chat_messaging_one_screen';

  static const String chatMessagingTwoScreen = '/chat_messaging_two_screen';

  static const String chatGoToTheBottomScreen = '/chat_go_to_the_bottom_screen';

  static const String chatMessagingThreeScreen = '/chat_messaging_three_screen';

  static const String profileRewardScreen = '/profile_reward_screen';

  static const String myVouchersPage = '/my_vouchers_page';

  static const String voucherIsGonnaExpirePage =
      '/voucher_is_gonna_expire_page';

  static const String rewardsProgressPage = '/rewards_progress_page';

  static const String rewardsProgressTabContainerScreen =
      '/rewards_progress_tab_container_screen';

  static const String profileVoucherReminderScreen =
      '/profile_voucher_reminder_screen';

  static const String settingsScreen = '/settings_screen';

  static const String settingsFullScreen = '/settings_full_screen';

  static const String settingsProfileScreen = '/settings_profile_screen';

  static const String settingsAddCardScreen = '/settings_add_card_screen';

  static const String paymentMethodsHistoryScreen =
      '/payment_methods_history_screen';

  static const String paymentMethodsHistory2CardsScreen =
      '/payment_methods_history_2_cards_screen';

  static const String shippingAddressScreen = '/shipping_address_screen';

  static const String editShippingAddress1Screen =
      '/edit_shipping_address1_screen';

  static const String chooseYourCountryScreen = '/choose_your_country_screen';

  static const String chooseYourLanguageScreen = '/choose_your_language_screen';

  static const String chooseYourCurrencyScreen = '/choose_your_currency_screen';

  static const String sizesTypesScreen = '/sizes_types_screen';

  static const String aboutScreen = '/about_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: startScreen,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    ),
    GetPage(
      name: createAccountScreen,
      page: () => CreateAccountScreen(),
      bindings: [
        CreateAccountBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: passwordScreen,
      page: () => PasswordScreen(),
      bindings: [
        PasswordBinding(),
      ],
    ),
    GetPage(
      name: passwordTypingScreen,
      page: () => PasswordTypingScreen(),
      bindings: [
        PasswordTypingBinding(),
      ],
    ),
    GetPage(
      name: wrongPasswordScreen,
      page: () => WrongPasswordScreen(),
      bindings: [
        WrongPasswordBinding(),
      ],
    ),
    GetPage(
      name: passwordRecoveryScreen,
      page: () => PasswordRecoveryScreen(),
      bindings: [
        PasswordRecoveryBinding(),
      ],
    ),
    GetPage(
      name: passwordRecoveryCodeScreen,
      page: () => PasswordRecoveryCodeScreen(),
      bindings: [
        PasswordRecoveryCodeBinding(),
      ],
    ),
    GetPage(
      name: newPasswordScreen,
      page: () => NewPasswordScreen(),
      bindings: [
        NewPasswordBinding(),
      ],
    ),
    GetPage(
      name: helloCardScreen,
      page: () => HelloCardScreen(),
      bindings: [
        HelloCardBinding(),
      ],
    ),
    GetPage(
      name: readyCardScreen,
      page: () => ReadyCardScreen(),
      bindings: [
        ReadyCardBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: shopScreen,
      page: () => ShopScreen(),
      bindings: [
        ShopBinding(),
      ],
    ),
    GetPage(
      name: flashSaleLiveScreen,
      page: () => FlashSaleLiveScreen(),
      bindings: [
        FlashSaleLiveBinding(),
      ],
    ),
    GetPage(
      name: flashSaleScreen,
      page: () => FlashSaleScreen(),
      bindings: [
        FlashSaleBinding(),
      ],
    ),
    GetPage(
      name: flashSaleFullContainerScreen,
      page: () => FlashSaleFullContainerScreen(),
      bindings: [
        FlashSaleFullContainerBinding(),
      ],
    ),
    GetPage(
      name: liveScreen,
      page: () => LiveScreen(),
      bindings: [
        LiveBinding(),
      ],
    ),
    GetPage(
      name: storyDotsScreen,
      page: () => StoryDotsScreen(),
      bindings: [
        StoryDotsBinding(),
      ],
    ),
    GetPage(
      name: storyDotsTapScreen,
      page: () => StoryDotsTapScreen(),
      bindings: [
        StoryDotsTapBinding(),
      ],
    ),
    GetPage(
      name: storyProductStyleOneScreen,
      page: () => StoryProductStyleOneScreen(),
      bindings: [
        StoryProductStyleOneBinding(),
      ],
    ),
    GetPage(
      name: storyBannerScreen,
      page: () => StoryBannerScreen(),
      bindings: [
        StoryBannerBinding(),
      ],
    ),
    GetPage(
      name: storyProductStyleTwoScreen,
      page: () => StoryProductStyleTwoScreen(),
      bindings: [
        StoryProductStyleTwoBinding(),
      ],
    ),
    GetPage(
      name: shopClothingScreen,
      page: () => ShopClothingScreen(),
      bindings: [
        ShopClothingBinding(),
      ],
    ),
    GetPage(
      name: shopClothingOnScrollScreen,
      page: () => ShopClothingOnScrollScreen(),
      bindings: [
        ShopClothingOnScrollBinding(),
      ],
    ),
    GetPage(
      name: categoriesFilterTabContainerScreen,
      page: () => CategoriesFilterTabContainerScreen(),
      bindings: [
        CategoriesFilterTabContainerBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: imageSearchScreen,
      page: () => ImageSearchScreen(),
      bindings: [
        ImageSearchBinding(),
      ],
    ),
    GetPage(
      name: recognizingImageScreen,
      page: () => RecognizingImageScreen(),
      bindings: [
        RecognizingImageBinding(),
      ],
    ),
    GetPage(
      name: imageRecognizedScreen,
      page: () => ImageRecognizedScreen(),
      bindings: [
        ImageRecognizedBinding(),
      ],
    ),
    GetPage(
      name: imageSearchResultsScreen,
      page: () => ImageSearchResultsScreen(),
      bindings: [
        ImageSearchResultsBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: productScreen,
      page: () => ProductScreen(),
      bindings: [
        ProductBinding(),
      ],
    ),
    GetPage(
      name: productSaleScreen,
      page: () => ProductSaleScreen(),
      bindings: [
        ProductSaleBinding(),
      ],
    ),
    GetPage(
      name: productFullScreen,
      page: () => ProductFullScreen(),
      bindings: [
        ProductFullBinding(),
      ],
    ),
    GetPage(
      name: productVariationsScreen,
      page: () => ProductVariationsScreen(),
      bindings: [
        ProductVariationsBinding(),
      ],
    ),
    GetPage(
      name: reviewsScreen,
      page: () => ReviewsScreen(),
      bindings: [
        ReviewsBinding(),
      ],
    ),
    GetPage(
      name: wishlistEmptyScreen,
      page: () => WishlistEmptyScreen(),
      bindings: [
        WishlistEmptyBinding(),
      ],
    ),
    GetPage(
      name: recentlyViewedScreen,
      page: () => RecentlyViewedScreen(),
      bindings: [
        RecentlyViewedBinding(),
      ],
    ),
    GetPage(
      name: recentlyViewedDateScreen,
      page: () => RecentlyViewedDateScreen(),
      bindings: [
        RecentlyViewedDateBinding(),
      ],
    ),
    GetPage(
      name: recentlyViewedDateChosenTabContainerScreen,
      page: () => RecentlyViewedDateChosenTabContainerScreen(),
      bindings: [
        RecentlyViewedDateChosenTabContainerBinding(),
      ],
    ),
    GetPage(
      name: cartEmptyShownFromWishlistScreen,
      page: () => CartEmptyShownFromWishlistScreen(),
      bindings: [
        CartEmptyShownFromWishlistBinding(),
      ],
    ),
    GetPage(
      name: cartEmptyShownFromPopularScreen,
      page: () => CartEmptyShownFromPopularScreen(),
      bindings: [
        CartEmptyShownFromPopularBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: voucherAddedScreen,
      page: () => VoucherAddedScreen(),
      bindings: [
        VoucherAddedBinding(),
      ],
    ),
    GetPage(
      name: toRecieveScreen,
      page: () => ToRecieveScreen(),
      bindings: [
        ToRecieveBinding(),
      ],
    ),
    GetPage(
      name: toReceiveProgressScreen,
      page: () => ToReceiveProgressScreen(),
      bindings: [
        ToReceiveProgressBinding(),
      ],
    ),
    GetPage(
      name: toReceiveAttemptIsNotSuccessfulScreen,
      page: () => ToReceiveAttemptIsNotSuccessfulScreen(),
      bindings: [
        ToReceiveAttemptIsNotSuccessfulBinding(),
      ],
    ),
    GetPage(
      name: profileToReceiveNotificationScreen,
      page: () => ProfileToReceiveNotificationScreen(),
      bindings: [
        ProfileToReceiveNotificationBinding(),
      ],
    ),
    GetPage(
      name: deliveredScreen,
      page: () => DeliveredScreen(),
      bindings: [
        DeliveredBinding(),
      ],
    ),
    GetPage(
      name: myActivityScreen,
      page: () => MyActivityScreen(),
      bindings: [
        MyActivityBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: chatStartingQuestionOneScreen,
      page: () => ChatStartingQuestionOneScreen(),
      bindings: [
        ChatStartingQuestionOneBinding(),
      ],
    ),
    GetPage(
      name: chatStartingQuestionTwoScreen,
      page: () => ChatStartingQuestionTwoScreen(),
      bindings: [
        ChatStartingQuestionTwoBinding(),
      ],
    ),
    GetPage(
      name: chatStartingQuestionThreeScreen,
      page: () => ChatStartingQuestionThreeScreen(),
      bindings: [
        ChatStartingQuestionThreeBinding(),
      ],
    ),
    GetPage(
      name: chatConnectingWithAnAgentScreen,
      page: () => ChatConnectingWithAnAgentScreen(),
      bindings: [
        ChatConnectingWithAnAgentBinding(),
      ],
    ),
    GetPage(
      name: chatAgentIsTypingScreen,
      page: () => ChatAgentIsTypingScreen(),
      bindings: [
        ChatAgentIsTypingBinding(),
      ],
    ),
    GetPage(
      name: chatHelloScreen,
      page: () => ChatHelloScreen(),
      bindings: [
        ChatHelloBinding(),
      ],
    ),
    GetPage(
      name: chatResponseScreen,
      page: () => ChatResponseScreen(),
      bindings: [
        ChatResponseBinding(),
      ],
    ),
    GetPage(
      name: chatVoucherScreen,
      page: () => ChatVoucherScreen(),
      bindings: [
        ChatVoucherBinding(),
      ],
    ),
    GetPage(
      name: chatMessagingOneScreen,
      page: () => ChatMessagingOneScreen(),
      bindings: [
        ChatMessagingOneBinding(),
      ],
    ),
    GetPage(
      name: chatMessagingTwoScreen,
      page: () => ChatMessagingTwoScreen(),
      bindings: [
        ChatMessagingTwoBinding(),
      ],
    ),
    GetPage(
      name: chatGoToTheBottomScreen,
      page: () => ChatGoToTheBottomScreen(),
      bindings: [
        ChatGoToTheBottomBinding(),
      ],
    ),
    GetPage(
      name: chatMessagingThreeScreen,
      page: () => ChatMessagingThreeScreen(),
      bindings: [
        ChatMessagingThreeBinding(),
      ],
    ),
    GetPage(
      name: profileRewardScreen,
      page: () => ProfileRewardScreen(),
      bindings: [
        ProfileRewardBinding(),
      ],
    ),
    GetPage(
      name: rewardsProgressTabContainerScreen,
      page: () => RewardsProgressTabContainerScreen(),
      bindings: [
        RewardsProgressTabContainerBinding(),
      ],
    ),
    GetPage(
      name: profileVoucherReminderScreen,
      page: () => ProfileVoucherReminderScreen(),
      bindings: [
        ProfileVoucherReminderBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: settingsFullScreen,
      page: () => SettingsFullScreen(),
      bindings: [
        SettingsFullBinding(),
      ],
    ),
    GetPage(
      name: settingsProfileScreen,
      page: () => SettingsProfileScreen(),
      bindings: [
        SettingsProfileBinding(),
      ],
    ),
    GetPage(
      name: settingsAddCardScreen,
      page: () => SettingsAddCardScreen(),
      bindings: [
        SettingsAddCardBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodsHistoryScreen,
      page: () => PaymentMethodsHistoryScreen(),
      bindings: [
        PaymentMethodsHistoryBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodsHistory2CardsScreen,
      page: () => PaymentMethodsHistory2CardsScreen(),
      bindings: [
        PaymentMethodsHistory2CardsBinding(),
      ],
    ),
    GetPage(
      name: shippingAddressScreen,
      page: () => ShippingAddressScreen(),
      bindings: [
        ShippingAddressBinding(),
      ],
    ),
    GetPage(
      name: editShippingAddress1Screen,
      page: () => EditShippingAddress1Screen(),
      bindings: [
        EditShippingAddress1Binding(),
      ],
    ),
    GetPage(
      name: chooseYourCountryScreen,
      page: () => ChooseYourCountryScreen(),
      bindings: [
        ChooseYourCountryBinding(),
      ],
    ),
    GetPage(
      name: chooseYourLanguageScreen,
      page: () => ChooseYourLanguageScreen(),
      bindings: [
        ChooseYourLanguageBinding(),
      ],
    ),
    GetPage(
      name: chooseYourCurrencyScreen,
      page: () => ChooseYourCurrencyScreen(),
      bindings: [
        ChooseYourCurrencyBinding(),
      ],
    ),
    GetPage(
      name: sizesTypesScreen,
      page: () => SizesTypesScreen(),
      bindings: [
        SizesTypesBinding(),
      ],
    ),
    GetPage(
      name: aboutScreen,
      page: () => AboutScreen(),
      bindings: [
        AboutBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    )
  ];
}
