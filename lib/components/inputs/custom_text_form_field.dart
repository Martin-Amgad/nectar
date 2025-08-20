import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.LabelText,
    this.suffixIcon,
    this.prefixIcon,
    this.onchanged,
    this.obscure = false,
    this.validator,
    this.HintText = '',
  });
  final String LabelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onchanged;
  final bool obscure;
  final String? Function(String?)? validator;
  final String HintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      validator: validator,
      decoration: InputDecoration(
        floatingLabelStyle: TextStyle(
          fontSize: 16,
          color: AppColors.greytextxcolor,
          fontWeight: FontWeight.w600,
        ),
        label: Text(LabelText),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: HintText,
        hintStyle: TextStyle(
          color: AppColors.greytextxcolor, // change color
          fontSize: 14, // change font size
        ),
      ),
      onChanged: onchanged,
    );
  }
}
