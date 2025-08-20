import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/utils/colors.dart';

class screen_header extends StatelessWidget {
  const screen_header({
    super.key,
    required this.title,
    required this.subtitle,
    required this.AppAssets,
    this.width = 50,
    this.height = 50,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });
  final double? width;
  final double? height;
  final String title;
  final String subtitle;
  final String AppAssets;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets, width: width, height: height),
            ],
          ),
          SizedBox(height: 100),
          Text(
            title,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: AppColors.textcolor,
            ),
          ),
          SizedBox(height: 15),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.greytextxcolor,
            ),
          ),
        ],
      ),
    );
  }
}
