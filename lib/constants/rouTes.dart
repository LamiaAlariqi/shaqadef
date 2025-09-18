import 'package:flutter/material.dart';
import 'package:shaqadef/screens/about.dart';
import 'package:shaqadef/screens/add.dart';
import 'package:shaqadef/screens/add_advertise_screen.dart';
import 'package:shaqadef/screens/add_product_screen.dart';
import 'package:shaqadef/screens/contact.dart';
import 'package:shaqadef/screens/defination.dart';
import 'package:shaqadef/screens/firstscreen.dart';
import 'package:shaqadef/screens/forget_password.dart';
import 'package:shaqadef/screens/home.dart';
import 'package:shaqadef/screens/login.dart';
import 'package:shaqadef/screens/mainscreen.dart';
import 'package:shaqadef/screens/more.dart';
import 'package:shaqadef/screens/new_password_screen.dart';
import 'package:shaqadef/screens/optscreen.dart';
import 'package:shaqadef/screens/payment_screen.dart';
import 'package:shaqadef/screens/personalInfo.dart';
import 'package:shaqadef/screens/platform_policy.dart';
import 'package:shaqadef/screens/product_details.dart';
import 'package:shaqadef/screens/profile.dart';
import 'package:shaqadef/screens/purchase_screen.dart';
import 'package:shaqadef/screens/register.dart';
import 'package:shaqadef/screens/saved_personal_data.dart';
import 'package:shaqadef/screens/scaps_screen.dart';
import 'package:shaqadef/screens/search.dart';
import 'package:shaqadef/screens/splash_screen.dart';
import 'package:shaqadef/screens/store_policy.dart';
import 'package:shaqadef/screens/used_tools.dart';

class Routes{
  static const String splashScreen="splashScreen";
  static const String homeScreen="homescreen";
  static const String profileScreen="profilescreen";
  static const String addScreen="addscreen";
  static const String searchScreen="searchscreen";
  static const String morescreen="shoppingscreen";
  static const String mainScreen="mainscreen";
  static const String addProductScreen="AddproductScreen";
  static const String addAdvertiseScreen="AddAdvertiseScreen";
  static const String about="About";
  static const String storepolicy="Storepolicy";
  static const String platformpolicy="platformpolicy";
  static const String contact="contact";
  static const String usedTools="UsedTools";
  static const String scrapsScreen="ScrapsScreen";
  static const String paymentScreen="PaymentScreen";
  static const String productDetails="ProductDetails";
  static const String purchaseScreen="PurchaseScreen";
 static const String registerScreen = "registerScreen";
  static const String login="Login";
  static const String forgetPasswordScreen="forgetPasswordScreen";
  static const String newpasswordScreen="newpasswordScreen";
  static const String otpScreen = "otpScreen";
  static const String savedPersonalData="SavedPersonalData";
  static const String defination1="Defination1";
  static const String defination2="Defination2";
  static const String firstscreen="Firstscreen";
  static const String personalinfo="personalinfo";
}

Map<String,Widget Function(BuildContext)> routes={
Routes.splashScreen:(context)=> const SplashScreen(),
Routes.homeScreen:(context)=>const HomeScreen(),
Routes.profileScreen:(context)=>const ProfileScreen(),
Routes.addScreen:(context)=>const AddScreen(),
Routes.searchScreen:(context)=>SearchScreen(),
Routes.morescreen:(context)=>const Morescreen(),
Routes.mainScreen:(context)=>const MainScreen(),
Routes.addProductScreen:(context)=>const AddProductScreen(),
Routes.addAdvertiseScreen:(context)=>const AddAdvertiseScreen(),
Routes.about:(context)=>const About(),
Routes.storepolicy:(context)=>const StorePolicy(),
Routes.contact:(context)=>const Contact(),
Routes.platformpolicy:(context)=>const PlatformPolicy(),
Routes.usedTools:(context)=>const UsedTools(),
Routes.scrapsScreen:(context)=>const ScrapsScreen(),
Routes.paymentScreen:(context)=>const PaymentScreen(),
Routes.productDetails:(context)=>const ProductDetails(),
Routes.purchaseScreen:(context)=>PurchaseScreen(),
Routes.registerScreen: (context) => const RegisterScreen(),
Routes.login:(context)=>Login(),
Routes.forgetPasswordScreen:(context)=>ForgetPasswordScreen(),
Routes.newpasswordScreen: (context) => const NewPasswordScreen(),
Routes.otpScreen: (context) => const OtpScreen(),
Routes.savedPersonalData:(context)=>SavedPersonalData(),
Routes.defination1:(context)=>Defination1(),
Routes.firstscreen:(context)=>Firstscreen(),
Routes.personalinfo:(context)=>Personalinfo()
};
