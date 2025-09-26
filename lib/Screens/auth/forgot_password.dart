import 'package:auth_page/Screens/auth/otp_verification.dart';
import 'package:auth_page/constant/color.dart';
import 'package:auth_page/widget/custom_button.dart';
import 'package:auth_page/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
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
              title: "Enter your email address to recover password",
              size: 16,
              color: AppColors.primaryDeepBlack,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 15),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
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
            SizedBox(height: 35),
            CustomButton(
              buttonTitle: "Sent OTP",
              buttonColor: AppColors.primaryPink,
              textColor: AppColors.primaryWhite,
              textWeight: FontWeight.w700,
              textSize: 20.0,
              buttonHeight: 48.0,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OtpVerification(),
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
