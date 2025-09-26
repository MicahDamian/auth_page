import 'package:auth_page/Screens/auth/password_reset.dart';
import 'package:auth_page/constant/color.dart';
import 'package:auth_page/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTP Verification',
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
              title:
                  "OTP has been sent to your email. Enter the code below to continue.",
              size: 18.5,
              color: AppColors.primaryDeepBlack,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                for (int i = 0; i < 6; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: SizedBox(
                      width: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.primaryGrey,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.primaryGreen,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 15),
            Center(
              child: Column(
                children: [
                  Text(
                    "00:59",
                    style: GoogleFonts.robotoMono(
                      fontSize: 20,
                      color: AppColors.primaryBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),

                  // Text(
                  //   "Resend code",
                  //   style: TextStyle(
                  //     fontSize: 14,
                  //     color: Color(0xFF000000),
                  //     fontWeight: FontWeight.w500,
                  //     decoration: TextDecoration.underline,
                  //     decorationColor: Color(0xFF000000),
                  //   ),
                  // ),

                  // I want to use this "Resend code" to navigate to the next page, though I'll have to change it later.
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PasswordReset(),
                          ),
                        );
                      },
                      child: Text(
                        "Resend code",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
