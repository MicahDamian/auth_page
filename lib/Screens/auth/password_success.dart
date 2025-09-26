import 'package:auth_page/Screens/auth/login_page.dart';
import 'package:auth_page/constant/color.dart';
import 'package:auth_page/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordSuccess extends StatefulWidget {
  const PasswordSuccess({super.key});

  @override
  State<PasswordSuccess> createState() => _PasswordSuccessState();
}

class _PasswordSuccessState extends State<PasswordSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 346, 40.0, 30.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "CONGRATULATION!",
                style: GoogleFonts.bebasNeue(
                  fontSize: 48.0,
                  color: AppColors.primaryBlack,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Your new password has been set. You can login to your account",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryDeepBlack,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 300),
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
            ],
          ),
        ),
      ),
    );
  }
}
