import 'package:auth_page/Screens/auth/login_page.dart';
import 'package:auth_page/Screens/auth/register_page.dart';
import 'package:auth_page/constant/color.dart';
import 'package:auth_page/widget/custom_button.dart';
import 'package:auth_page/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 150.0, 40.0, 30.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "WELCOME!",
                style: GoogleFonts.bebasNeue(
                  fontSize: 64.0,
                  color: AppColors.primaryBlack,
                  fontWeight: FontWeight.w400,
                ),
              ),
              CustomText(
                title: "Choose one option to continue",
                size: 16,
                color: AppColors.primaryDeepBlack,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 400),
              CustomButton(
                buttonTitle: "Login",
                textColor: AppColors.primaryWhite,
                textWeight: FontWeight.w700,
                textSize: 20.0,
                buttonHeight: 48.0,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                alignment: Alignment.center,
              ),
              SizedBox(height: 20),
              CustomButton(
                buttonTitle: "Register",
                buttonColor: AppColors.primaryPink,
                textColor: AppColors.primaryWhite,
                textWeight: FontWeight.w700,
                textSize: 20.0,
                buttonHeight: 48.0,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const RegisterPage()),
                  );
                },
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
