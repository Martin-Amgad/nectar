import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/utils/colors.dart';

class CategoryModel {
  final String title;
  final Widget image;

  CategoryModel({required this.title, required this.image});
}

List<CategoryModel> categories = [
  CategoryModel(
    title: 'Fresh Fruits\& Vegetable',
    image: const Image(image: AssetImage(AppAssets.Fruits_Vegetable)),
  ),
  CategoryModel(
    title: 'Cooking Oil\& Ghee',
    image: const Image(image: AssetImage(AppAssets.oils)),
  ),
  CategoryModel(
    title: 'Meat \& Fish',
    image: const Image(image: AssetImage(AppAssets.Meat)),
  ),
  CategoryModel(
    title: 'Bakery \& Snacks',
    image: const Image(image: AssetImage(AppAssets.Bakery)),
  ),
  CategoryModel(
    title: 'Dairy \& Eggs',
    image: const Image(image: AssetImage(AppAssets.Dairy)),
  ),
  CategoryModel(
    title: 'Beverages',
    image: const Image(image: AssetImage(AppAssets.Beverages)),
  ),
  CategoryModel(
    title: 'Fresh Fruits\& Vegetable',
    image: const Image(image: AssetImage(AppAssets.Fruits_Vegetable)),
  ),
  CategoryModel(
    title: 'Fresh Fruits\& Vegetable',
    image: const Image(image: AssetImage(AppAssets.Fruits_Vegetable)),
  ),
];

List<Color> border_color = [
  AppColors.fruits,
  AppColors.oilscolor,
  AppColors.meatcolor,
  AppColors.bakerycolor,
  AppColors.dairycolor,
  AppColors.beveragescolor,
  AppColors.fruits,
  AppColors.fruits,
];
