import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';
import 'package:nectar_ui/feature/home/pages/main_screen.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.OrderComplete),
              SizedBox(height: 70),
              Text(
                'Your Order has been \naccepted',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColors.Darktextxolor,
                ),
              ),
              Text(
                'Your items has been placcd and is on\n it\'s way to being processed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greytextxcolor,
                ),
              ),
              SizedBox(height: 60),
              customBtn(
                BtnLabel: 'Back To Home',
                onPressed: () {
                  cart.clear();
                  pushWithReplacement(context, MainScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
