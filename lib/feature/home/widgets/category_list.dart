import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/components/inputs/custom_text_form_field.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/feature/home/model/category_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.category_model,
    required this.Container_Color,
  });
  final CategoryModel category_model;
  final Color Container_Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 180,
      decoration: BoxDecoration(
        color: Container_Color.withAlpha(40),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Container_Color.withAlpha(180)),
      ),
      child: Column(
        children: [
          category_model.image,
          SizedBox(height: 30),
          Text(
            category_model.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.Darktextxolor,
            ),
          ),
        ],
      ),
    );
  }
}
