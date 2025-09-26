import 'package:auth_page/Screens/auth/password_success.dart';
import 'package:auth_page/constant/color.dart';
import 'package:auth_page/widget/custom_button.dart';
import 'package:auth_page/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set new password',
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryBlack,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 100.0, 40.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: "Set new password for your account",
              size: 18.5,
              color: AppColors.primaryDeepBlack,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 30),
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
                  borderSide: BorderSide(color: AppColors.primaryGrey),
                  borderRadius: BorderRadius.circular(4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: AppColors.primaryGreen),
                ),
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                title: "Confirm Password",
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
                  borderSide: BorderSide(color: AppColors.primaryGrey),
                  borderRadius: BorderRadius.circular(4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: AppColors.primaryGreen),
                ),
              ),
            ),
            SizedBox(height: 350),
            CustomButton(
              buttonTitle: "Continue",
              textColor: AppColors.primaryWhite,
              textWeight: FontWeight.w700,
              textSize: 20.0,
              buttonHeight: 48.0,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PasswordSuccess(),
                  ),
                );
              },
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
