import 'package:auth_page/Screens/auth/register_success.dart';
import 'package:auth_page/constant/color.dart';
import 'package:auth_page/widget/custom_button.dart';
import 'package:auth_page/widget/custom_text.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 100.0, 40.0, 30.0),
        child: Center(
          child: Column(
            children: [
              CustomText(
                title: "Create new account",
                size: 24,
                color: AppColors.primaryDeepBlack,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      title: "Full Name",
                      size: 16,
                      color: AppColors.primaryDeepBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "John Doe",
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
                      title: "Email Address",
                      size: 16,
                      color: AppColors.primaryDeepBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "xyz@gmail.com",
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
                      title: "Phone Number",
                      size: 16,
                      color: AppColors.primaryDeepBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+234",
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  // SizedBox(width: 5),
                  CustomText(
                    title: "I agree to the term of use",
                    size: 12,
                    color: AppColors.primaryBlack,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomButton(
                buttonTitle: "Register",
                buttonColor: AppColors.primaryPink,
                textColor: AppColors.primaryWhite,
                textWeight: FontWeight.w700,
                textSize: 20.0,
                buttonHeight: 48.0,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterSuccess(),
                    ),
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
