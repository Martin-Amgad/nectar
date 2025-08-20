import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';

class ProductsModel {
  final String AppAssets;
  final String name;
  final String description;
  final String price;
  final String details;
  int amount;
  bool favorite;

  ProductsModel({
    required this.AppAssets,
    required this.name,
    required this.description,
    required this.price,
    required this.details,
    this.amount = 1,
    this.favorite = false,
  });
}

List<ProductsModel> offers = [
  ProductsModel(
    AppAssets: AppAssets.banana,
    name: 'Organic Bananas',
    description: '7 pcs',
    price: '3.99',
    details:
        'Bananas are rich in nutrients. Bananas may support digestive health. Bananas may be good for heart health. As part of a wholesome and varied diet',
  ),
  ProductsModel(
    AppAssets: AppAssets.apple,
    name: 'Red Apple',
    description: '1kg',
    price: '2.99',
    details:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductsModel(
    AppAssets: AppAssets.RedPepper,
    name: 'Bell Pepper Red',
    description: '1kg',
    price: '5.99',
    details:
        'Red peppers are loaded with vitamins. Red peppers may support eye health. Red peppers may boost immune function. As part of a nutritious and varied diet.',
  ),
  ProductsModel(
    AppAssets: AppAssets.Ginger,
    name: 'Ginger',
    description: '250gm',
    price: '1.99',
    details:
        'Ginger is packed with beneficial compounds. Ginger may help reduce inflammation. Ginger may aid in digestion. As part of a balanced and varied diet.',
  ),
  ProductsModel(
    AppAssets: AppAssets.banana,
    name: 'Organic Bananas',
    description: '7 pcs',
    price: '3.99',
    details:
        'Bananas are rich in nutrients. Bananas may support digestive health. Bananas may be good for heart health. As part of a wholesome and varied diet',
  ),
  ProductsModel(
    AppAssets: AppAssets.apple,
    name: 'Red Apple',
    description: '1kg',
    price: '2.99',
    details:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductsModel(
    AppAssets: AppAssets.RedPepper,
    name: 'Bell Pepper Red',
    description: '1kg',
    price: '5.99',
    details:
        'Red peppers are loaded with vitamins. Red peppers may support eye health. Red peppers may boost immune function. As part of a nutritious and varied diet.',
  ),
  ProductsModel(
    AppAssets: AppAssets.Ginger,
    name: 'Ginger',
    description: '250gm',
    price: '1.99',
    details:
        'Ginger is packed with beneficial compounds. Ginger may help reduce inflammation. Ginger may aid in digestion. As part of a balanced and varied diet.',
  ),
];
List<ProductsModel> cart = [];

List<ProductsModel> Favorite = [];
