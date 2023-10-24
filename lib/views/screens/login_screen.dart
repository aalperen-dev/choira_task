import 'package:choira_task/views/contansts.dart';
import 'package:choira_task/views/screens/onboarting_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 25,
          right: 25,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: Image.asset('assets/frame.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter your mobile number',
                    style: GoogleFonts.getFont(
                      'Lato',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You will receive a 4 digit code verification',
                    style: GoogleFonts.getFont('Lato',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: choiraDark),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: IntlPhoneField(
                    disableLengthCheck: true,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    dropdownTextStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    dropdownIconPosition: IconPosition.trailing,
                    dropdownIcon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: choiraBlueTwo,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    showCountryFlag: false,
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomButton(
                    buttonBgColor: choiraYellow,
                    buttonTxt: 'Continue',
                    buttonTxtColor: choiraDark,
                    onTap: () {},
                    borderRadius: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}