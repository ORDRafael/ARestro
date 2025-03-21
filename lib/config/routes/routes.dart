import 'package:flutter/material.dart';
import 'package:restaurante/views/drawer/config.dart';
import 'package:restaurante/views/login/forgot_password.dart';
import 'package:restaurante/views/drawer/helpAndSupport.dart';
import 'package:restaurante/views/principal/home.dart';
import 'package:restaurante/views/principal/offers.dart';
import 'package:restaurante/views/principal/order_details.dart';
import 'package:restaurante/views/login/password_change_success.dart';
import 'package:restaurante/views/principal/paymentDone.dart';
import 'package:restaurante/views/principal/profile.dart';
import 'package:restaurante/views/login/reset_password.dart';
import 'package:restaurante/views/principal/restaurant_details.dart';
import 'package:restaurante/views/login/sign_up.dart';
import 'package:restaurante/views/login/start.dart';
import 'package:restaurante/views/login/login.dart';
import 'package:restaurante/views/login/splash_screen.dart';
import 'package:restaurante/views/principal/tables.dart';

class AppRoutes {
  static const String initial = '/';
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
    splashScreen: (context) => const SplashScreen(),
    login: (context) => const Login(),
    forgotPassword: (context) => const ForgotPassword(),
    resetPassword: (context) => const ResetPassword(),
    passwordChangeSuccess: (context) => const PasswordChangeSuccess(),
    signUp: (context) => const SignUp(),
    home: (context) => HomeScreen(),
    profile: (context) => Profile(),
    orderDetails: (context) => OrderDetails(),
    paymentDone: (context) => Paymentdone(),
    offers: (context) => Offers(),
    config: (context) => Config(),
    helpAndSupport: (context) => HelpAndSupport(),
    tables: (context) => Tables(),
    restaurantDetails: (context) => RestaurantDetails(
      title: '',
      subtitle: '',
      images: [],
    ),
  }; 
}
