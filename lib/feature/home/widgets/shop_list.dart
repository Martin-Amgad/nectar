import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/feature/details/product_details_screen.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';

class ShopList extends StatefulWidget {
  const ShopList({super.key, required this.offers_products});
  final ProductsModel offers_products;

  @override
  State<ShopList> createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetialsScreen(model: widget.offers_products));
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.greytextxcolor),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.offers_products.AppAssets,
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 25),
            Text(
              widget.offers_products.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.Darktextxolor,
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.offers_products.description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greytextxcolor,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$ ${widget.offers_products.price}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.Darktextxolor,
                  ),
                ),
                FloatingActionButton(
                  heroTag: UniqueKey(),
                  onPressed: () {
                    final index = cart.indexWhere((item) {
                      return item.name == widget.offers_products.name;
                    });
                    if (index != -1) {
                      cart[index].amount += amount;
                    } else {
                      cart.add(widget.offers_products);
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Your ${widget.offers_products.name} were added to the cart!',
                        ),
                        duration: Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        margin: EdgeInsets.all(12),
                      ),
                    );
                  },
                  mini: true,
                  child: Icon(Icons.add, color: Colors.white),
                  backgroundColor: AppColors.primarycolor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
