import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';
import 'package:nectar_ui/feature/home/pages/order_accepted_screen.dart';

class modalbottomsheet extends StatefulWidget {
  const modalbottomsheet({super.key, required this.model});
  final List<ProductsModel> model;

  @override
  State<modalbottomsheet> createState() => _modalbottomsheetState();
}

class _modalbottomsheetState extends State<modalbottomsheet> {
  final double total = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.Darktextxolor,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greytextxcolor,
                ),
              ),
              SizedBox(width: 139),
              Text(
                'Select Method',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.Darktextxolor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greytextxcolor,
                ),
              ),
              SizedBox(width: 189),
              Icon(Icons.credit_card),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Promo Code',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greytextxcolor,
                ),
              ),
              SizedBox(width: 109),
              Text(
                'Pick Discount',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.Darktextxolor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Cost',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greytextxcolor,
                ),
              ),
              SizedBox(width: 177),
              Text(
                '\$${getCartTotal().toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.Darktextxolor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: AppColors.greytextxcolor,
              ),
              children: [
                TextSpan(
                  text: ('By continuing you agree to our '),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greytextxcolor,
                  ),
                ),
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.Darktextxolor,
                  ),
                ),
                TextSpan(
                  text: (' and '),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greytextxcolor,
                  ),
                ),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.Darktextxolor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          customBtn(
            BtnLabel: 'Place Order',
            onPressed: () {
              pushWithReplacement(context, OrderAcceptedScreen());
            },
          ),
        ],
      ),
    );
  }
}

double getCartTotal() {
  double total = 0;

  for (var item in cart) {
    total += double.parse(item.price) * item.amount;
  }

  return total;
}
