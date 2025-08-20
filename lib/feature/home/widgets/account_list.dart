import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/feature/home/model/account_model.dart';

class AccountList extends StatelessWidget {
  const AccountList({super.key, required this.Account_tabs});
  final AccountModel Account_tabs;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 65,
      child: Column(
        children: [
          Row(
            children: [
              Account_tabs.image,
              SizedBox(width: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Account_tabs.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.Darktextxolor,
                      ),
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
