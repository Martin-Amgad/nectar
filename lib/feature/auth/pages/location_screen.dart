import 'package:flutter/material.dart';
import 'package:nectar_ui/components/inputs/custom_text_form_field.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/core/widgets/screen_header.dart';
import 'package:nectar_ui/feature/auth/pages/login_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  screen_header(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    width: 220,
                    height: 170,
                    AppAssets: AppAssets.locationSvg,
                    title: 'select your location',
                    subtitle:
                        'Switch on your location to stay in tune with what’s happening in your area',
                  ),
                  SizedBox(height: 160),
                  CustomTextFormField(
                    LabelText: 'Address',
                    HintText: ' Cairo,Egypt',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your address';
                      }
                    },
                  ),
                  SizedBox(height: 80),
                  customBtn(
                    BtnLabel: 'Submit',
                    onPressed: () {
                      if (formkey.currentState?.validate() ?? false)
                        setState(() {
                          pushWithReplacement(context, LoginScreen());
                        });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
