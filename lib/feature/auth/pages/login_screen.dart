import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/components/inputs/custom_text_form_field.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/auth/pages/signup_screen.dart';
import 'package:nectar_ui/core/widgets/screen_header.dart';
import 'package:nectar_ui/feature/home/pages/home_screen.dart';
import 'package:nectar_ui/feature/home/pages/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscuretext = true;
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  screen_header(
                    width: 50,
                    AppAssets: AppAssets.carrotSvg,
                    title: 'Login',
                    subtitle: 'Enter your email and password',
                  ),
                  SizedBox(height: 40),

                  //Email textformfield
                  CustomTextFormField(
                    LabelText: 'Email',
                    HintText: 'martin.amgad@gmail.com',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your email';
                      }
                    },
                  ),
                  SizedBox(height: 30),

                  //Password textformfield
                  CustomTextFormField(
                    LabelText: 'Password',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your password';
                      } else if (value!.length < 6) {
                        return 'Password must be at least 6 charachters';
                      }
                    },
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscuretext = !obscuretext;
                        });
                      },
                      icon: obscuretext
                          ? SvgPicture.asset(
                              AppAssets.EyeIconSvg,
                              width: 20,
                              height: 20,
                              colorFilter: ColorFilter.mode(
                                AppColors.greytextxcolor,
                                BlendMode.srcIn,
                              ),
                            )
                          : Icon(
                              Icons.visibility,
                              color: AppColors.primarycolor,
                            ),
                    ),
                    obscure: obscuretext,
                  ),
                  SizedBox(height: 15),

                  //Forgot password?
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.Darktextxolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  //Login button
                  customBtn(
                    BtnLabel: 'Login',
                    onPressed: () {
                      if (formkey.currentState?.validate() ?? false) {
                        pushWithReplacement(context, MainScreen());
                      }
                    },
                  ),
                  SizedBox(height: 25),

                  //Signup text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.Darktextxolor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          pushWithReplacement(context, SignupScreen());
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColors.primarycolor,
                          ),
                        ),
                      ),
                    ],
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
