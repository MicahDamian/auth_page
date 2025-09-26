import 'package:auth_page/Screens/auth/forgot_password.dart';
import 'package:auth_page/Screens/auth/register_page.dart';
import 'package:auth_page/constant/color.dart';
import 'package:auth_page/widget/custom_button.dart';
import 'package:auth_page/widget/custom_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 150.0, 40.0, 30.0),
        child: Center(
          child: Column(
            children: [
              CustomText(
                title: "Login to your account",
                size: 24,
                color: AppColors.primaryDeepBlack,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      title: "Email",
                      size: 16,
                      color: AppColors.primaryDeepBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: AppColors.primaryGrey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                          color: AppColors.primaryGreen,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      title: "Password",
                      size: 16,
                      color: AppColors.primaryDeepBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "***********",
                      hintStyle: TextStyle(color: AppColors.primaryGrey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                          color: AppColors.primaryGreen,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6FA9B7),
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF6FA9B7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                    buttonTitle: "Login",
                    textColor: AppColors.primaryWhite,
                    textWeight: FontWeight.w700,
                    textSize: 20.0,
                    buttonHeight: 48.0,
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => const LoginPage(),
                      //   ),
                      // );
                    },
                    alignment: Alignment.center,
                  ),
                ],
              ),
              SizedBox(height: 30),
              CustomText(
                title: "or continue with",
                size: 14,
                color: AppColors.primaryDeepBlack,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, size: 35),
                  SizedBox(width: 22),
                  Icon(Icons.facebook, size: 35),
                  SizedBox(width: 22),
                  Icon(Icons.apple_rounded, size: 38),
                ],
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    title: "Don’t have an account?",
                    size: 14,
                    color: AppColors.primaryDeepBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 4),

                  // CustomText(
                  //   title: "Register",
                  //   size: 14,
                  //   color: Color(0xFFF34068),
                  //   fontWeight: FontWeight.w500,
                  // ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFF34068),
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFFF34068),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
