import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/feature/home/pages/account_screen.dart';
import 'package:nectar_ui/feature/home/pages/main_screen.dart';
import 'package:nectar_ui/feature/auth/pages/login_screen.dart';
import 'package:nectar_ui/feature/auth/pages/location_screen.dart';
import 'package:nectar_ui/feature/home/pages/cart_screen.dart';
import 'package:nectar_ui/feature/home/pages/favorite_screen.dart';
import 'package:nectar_ui/feature/home/pages/home_screen.dart';
import 'package:nectar_ui/feature/home/pages/category_search_screen.dart';
import 'package:nectar_ui/feature/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      pushTo(context, const WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Center(child: SvgPicture.asset(AppAssets.logoSvg, width: 200)),
    );
  }
}
