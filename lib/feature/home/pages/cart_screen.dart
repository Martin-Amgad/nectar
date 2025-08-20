import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/details/widgets/modalbottomsheet.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';
import 'package:nectar_ui/feature/home/widgets/cart_list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.Darktextxolor,
          ),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Divider(),
            Expanded(
              child: cart.isEmpty
                  ? Center(
                      child: Text(
                        "Your cart is empty",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greytextxcolor,
                        ),
                      ),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        var cart_products = cart[index];
                        return CartList(Cart_Products: cart_products);
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: cart.length,
                    ),
            ),

            customBtn(
              BtnLabel: 'Go to Checkout',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  builder: (context) {
                    return modalbottomsheet(model: cart, amount: amount);
                  },
                );
              },
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
