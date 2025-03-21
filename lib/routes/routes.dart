import 'package:flutter/material.dart';
import 'package:restaurante/main_screen.dart';
import 'package:restaurante/views/config.dart';
import 'package:restaurante/views/forgot_password.dart';
import 'package:restaurante/views/helpAndSupport.dart';
import 'package:restaurante/views/home.dart';
import 'package:restaurante/views/login.dart';
import 'package:restaurante/views/offers.dart';
import 'package:restaurante/views/order_details.dart';
import 'package:restaurante/views/password_change_success.dart';
import 'package:restaurante/views/paymentDone.dart';
import 'package:restaurante/views/profile.dart';
import 'package:restaurante/views/reset_password.dart';
import 'package:restaurante/views/restaurant_details.dart';
import 'package:restaurante/views/sign_up.dart';
import 'package:restaurante/views/start.dart';
import 'package:restaurante/views/splash_screen.dart';
import 'package:restaurante/views/tables.dart';

class AppRoutes {
  static const String initial = '/';
  static const String mainScreen = '/mainScreen';
  static const String start = '/start';
  static const String splashScreen = '/splashScreen';
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';
  static const String resetPassword = '/resetPassword';
  static const String passwordChangeSuccess = '/passwordChangeSuccess';
  static const String signUp = '/signUp';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String orderDetails = '/orderDetails';
  static const String paymentDone = '/paymentDone';
  static const String offers = '/offers';
  static const String config = '/config';
  static const String helpAndSupport = '/helpAndSupport';
  static const String tables = '/tables';
  static const String restaurantDetails = '/restaurantDetails';
  

  static Map<String, WidgetBuilder> routes = {
    start: (context) => const FirstScreen(),
    mainScreen: (context) => const MainScreen(),
    splashScreen: (context) => const SplashScreen(),
    login: (context) => const Login(),
    forgotPassword: (context) => const ForgotPassword(),
    resetPassword: (context) => const ResetPassword(),
    passwordChangeSuccess: (context) => const PasswordChangeSuccess(),
    signUp: (context) => const SignUp(),
    home: (context) => const HomeScreen(),
    profile: (context) => const Profile(),
    orderDetails: (context) => const OrderDetails(),
    paymentDone: (context) => const Paymentdone(),
    offers: (context) => const Offers(),
    config: (context) => const Config(),
    helpAndSupport: (context) => const HelpAndSupport(),
    tables: (context) => const Tables(),
    restaurantDetails: (context) => RestaurantDetails(
      title: '',
      subtitle: '',
      images: const [],
    ),
  }; 
}
