import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/auth/pages/location_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppAssets.Welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff0E1727).withValues(alpha: 0.1),
                    Color(0xff858585).withValues(alpha: 0.4),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(AppAssets.carrotSvg, color: Colors.white),
                SizedBox(height: 25),
                Text(
                  'Welcome \nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Ger your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.greytextxcolor,
                  ),
                ),
                SizedBox(height: 40),
                customBtn(
                  BtnLabel: 'Get Started',
                  onPressed: () {
                    pushWithReplacement(context, LocationScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
