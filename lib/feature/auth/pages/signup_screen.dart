import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/components/inputs/custom_text_form_field.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extentions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/auth/pages/login_screen.dart';
import 'package:nectar_ui/core/widgets/screen_header.dart';
import 'package:nectar_ui/feature/home/pages/home_screen.dart';
import 'package:nectar_ui/feature/home/pages/main_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  screen_header(
                    width: 50,
                    title: 'Sign up',
                    subtitle: 'Enter your credentials to continue',
                    AppAssets: AppAssets.carrotSvg,
                  ),
                  SizedBox(height: 40),

                  // Username textformfield
                  CustomTextFormField(
                    LabelText: 'Username',
                    HintText: ' Martin Amgad',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your username';
                      }
                    },
                  ),
                  SizedBox(height: 30),

                  // Email textformfield
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

                  // Password textformfield
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
                  SizedBox(height: 20),

                  // Terms of service and privacy policy
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.greytextxcolor,
                      ),
                      children: [
                        TextSpan(text: ('By continuing you agree to our ')),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Terms of Service',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primarycolor,
                              ),
                            ),
                          ),
                        ),
                        TextSpan(text: (' and ')),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Privacy Policy.',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primarycolor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Signup button
                  customBtn(
                    BtnLabel: 'Sign Up',
                    onPressed: () {
                      if (formkey.currentState?.validate() ?? false) {
                        pushWithReplacement(context, MainScreen());
                      }
                    },
                  ),
                  SizedBox(height: 25),

                  // Login text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.Darktextxolor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          pushWithReplacement(context, LoginScreen());
                        },
                        child: Text(
                          'Login',
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
