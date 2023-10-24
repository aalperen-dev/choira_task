// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:choira_task/views/contansts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                // resimler
                Image.asset(
                  'assets/onboarding.png',
                  fit: BoxFit.cover,
                  width: 312,
                  height: 321,
                ),
                //
                SizedBox(
                  width: 275,
                  height: 165,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Achieve all your goals now',
                        style: GoogleFonts.getFont(
                          'Abyssinica SIL',
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        maxLines: 2,
                      ),
                      Text(
                        'Online courses to specialize in the entertainment field that lead the generation today.',
                        style: GoogleFonts.getFont(
                          'ABeeZee',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 325,
                  height: 165,
                  child: Column(
                    children: [
                      CustomButton(
                        buttonBgColor: Colors.yellow,
                        buttonTxt: 'Login',
                        onTap: () {},
                        buttonTxtColor: Colors.black,
                      ),
                      CustomButton(
                        buttonBgColor: choiraBlue,
                        buttonTxt: 'Create Account',
                        onTap: () {},
                        buttonTxtColor: Colors.white,
                        kWhiteBorder: true,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Guest Mode',
                          style: GoogleFonts.getFont('Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color buttonBgColor;
  final String buttonTxt;
  final Color buttonTxtColor;
  final VoidCallback onTap;
  final bool? kWhiteBorder;
  final double? borderRadius;
  const CustomButton({
    super.key,
    required this.buttonBgColor,
    required this.buttonTxt,
    required this.buttonTxtColor,
    required this.onTap,
    this.kWhiteBorder = false,
    this.borderRadius = 7,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonBgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          side: kWhiteBorder!
              ? const BorderSide(color: Colors.white)
              : BorderSide.none,
        ),
      ),
      onPressed: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTxt,
            style: GoogleFonts.getFont(
              'Inter',
              color: buttonTxtColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
