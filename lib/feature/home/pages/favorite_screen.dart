import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/home/pages/cart_screen.dart';
import 'package:nectar_ui/feature/home/pages/main_screen.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';
import 'package:nectar_ui/feature/home/widgets/favorite_list.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Favourite',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.Darktextxolor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Favorite.isEmpty
                    ? Center(
                        child: Text(
                          "No favorites yet",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greytextxcolor,
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemBuilder: (context, index) {
                          var favorite_products = Favorite[index];
                          return FavoriteList(
                            favorite_Products: favorite_products,
                          );
                        },
                        itemCount: Favorite.length,
                      ),
              ),
              customBtn(
                BtnLabel: 'Add All To Cart',
                onPressed: () {
                  for (var favItem in Favorite) {
                    favItem.favorite = !favItem.favorite;
                    final index = cart.indexWhere((cartItem) {
                      return cartItem.name == favItem.name; // compare names
                    });

                    if (index != -1) {
                      cart[index].amount++;
                    } else {
                      cart.add(favItem);
                    }
                  }

                  Favorite.clear();
                },
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
