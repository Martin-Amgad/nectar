import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/feature/details/product_details_screen.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key, required this.favorite_Products});
  final ProductsModel favorite_Products;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(favorite_Products.AppAssets),
            width: 70,
            height: 65,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favorite_Products.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.Darktextxolor,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  favorite_Products.description,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greytextxcolor,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                '\$ ${favorite_Products.price}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greytextxcolor,
                ),
              ),
              IconButton(
                onPressed: () {
                  pushTo(
                    context,
                    ProductDetialsScreen(model: favorite_Products),
                  );
                },
                icon: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
