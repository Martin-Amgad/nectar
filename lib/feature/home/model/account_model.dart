import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';

class AccountModel {
  final Widget image;
  final String name;

  AccountModel({required this.image, required this.name});
}

List<AccountModel> tabs = [
  AccountModel(image: Image.asset(AppAssets.OrdersIcon), name: 'Orders'),
  AccountModel(image: Image.asset(AppAssets.DetailsIcon), name: 'My Details'),
  AccountModel(
    image: Image.asset(AppAssets.AddressIcon),
    name: 'Delivery Address',
  ),
  AccountModel(
    image: Image.asset(AppAssets.PaymentIcon),
    name: 'Payment Methods',
  ),
  AccountModel(image: Image.asset(AppAssets.PromoIcon), name: 'Promo Card'),
  AccountModel(
    image: const Icon(Icons.notifications_none_outlined),
    name: 'Notifecations',
  ),
  AccountModel(
    image: const Icon(Icons.help_outline, color: Colors.black),
    name: 'Help',
  ),
  AccountModel(image: const Icon(Icons.info_outline), name: 'About'),
];
