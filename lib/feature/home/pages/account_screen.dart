import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/auth/pages/login_screen.dart';
import 'package:nectar_ui/feature/home/model/account_model.dart';
import 'package:nectar_ui/feature/home/pages/main_screen.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';
import 'package:nectar_ui/feature/home/widgets/account_list.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),

              //profile details
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      AppAssets.man,
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Martin Amgad',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: AppColors.Darktextxolor,
                            ),
                          ),
                          Icon(Icons.edit, color: AppColors.primarycolor),
                        ],
                      ),
                      Text(
                        'martin.amagd@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greytextxcolor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Divider(),

              //Options list
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    var Account_tabs = tabs[index];
                    return AccountList(Account_tabs: Account_tabs);
                  },
                  itemCount: tabs.length,
                ),
              ),

              //Log out button
              SizedBox(
                width: 365,
                height: 70,
                child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Color(0xffF2F3F2),
                  onPressed: () {
                    pushWithReplacement(context, LoginScreen());
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.logout, color: AppColors.primarycolor),
                        SizedBox(width: 100),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primarycolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
