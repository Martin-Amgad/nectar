import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';

class customBtn extends StatelessWidget {
  const customBtn({
    super.key,
    required this.BtnLabel,
    this.width = 365,
    this.height = 70,
    required this.onPressed,
  });
  final String BtnLabel;
  final double width;
  final double height;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FloatingActionButton(
        elevation: 0,
        onPressed: onPressed,
        backgroundColor: AppColors.primarycolor,
        child: Text(
          BtnLabel,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
