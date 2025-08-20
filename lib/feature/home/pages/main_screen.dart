import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';
import 'package:nectar_ui/feature/home/pages/account_screen.dart';
import 'package:nectar_ui/feature/home/pages/cart_screen.dart';
import 'package:nectar_ui/feature/home/pages/category_search_screen.dart';
import 'package:nectar_ui/feature/home/pages/favorite_screen.dart';
import 'package:nectar_ui/feature/home/pages/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    CategorySearchScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.greytextxcolor.withValues(alpha: 0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColors.primarycolor,
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: currentIndex == 0
                  ? Image.asset(
                      AppAssets.ShopIcon,
                      color: AppColors.primarycolor,
                    )
                  : Image.asset(AppAssets.ShopIcon),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 1
                  ? Image.asset(
                      AppAssets.ExploreIcon,
                      color: AppColors.primarycolor,
                    )
                  : Image.asset(AppAssets.ExploreIcon),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 2
                  ? Image.asset(
                      AppAssets.CartIcon,
                      color: AppColors.primarycolor,
                    )
                  : Image.asset(AppAssets.CartIcon),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 3
                  ? Image.asset(
                      AppAssets.FavoriteIcon,
                      color: AppColors.primarycolor,
                    )
                  : Image.asset(AppAssets.FavoriteIcon),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 4
                  ? Image.asset(
                      AppAssets.userIcon,
                      color: AppColors.primarycolor,
                    )
                  : Image.asset(AppAssets.userIcon),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
