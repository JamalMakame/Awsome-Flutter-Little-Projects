import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FancyPasswordController passwordController = FancyPasswordController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 79,
                ),
                Text(
                  'Reset your password',
                  style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: kMainTextClr,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Please enter your new password',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryTextClr,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 327,
                  child: FancyPasswordField(
                    passwordController: passwordController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          size: 24,
                        ),
                        focusColor: kPrimaryClr,
                        hintText: 'New Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        )),
                    validationRules: {
                      DigitValidationRule(),
                      UppercaseValidationRule(),
                      LowercaseValidationRule(),
                      SpecialCharacterValidationRule(),
                      MinCharactersValidationRule(6),
                      MaxCharactersValidationRule(12),
                    },
                    validationRuleBuilder: (rules, value) {
                      if (value.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      return ListView(
                        shrinkWrap: true,
                        children: rules
                            .map(
                              (rule) => rule.validate(value)
                                  ? Row(
                                      children: [
                                        const Icon(
                                          Icons.check,
                                          color: kPrimaryClr,
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          rule.name,
                                          style: const TextStyle(
                                            color: kPrimaryClr,
                                          ),
                                        ),
                                      ],
                                    )
                                  : Row(
                                      children: [
                                        const Icon(
                                          Icons.close,
                                          color: kSecondaryClr,
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          rule.name,
                                          style: const TextStyle(
                                            color: kSecondaryClr,
                                          ),
                                        ),
                                      ],
                                    ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                primaryButton(
                  buttonClr: kPrimaryClr,
                  textClr: Colors.white,
                  buttonText: 'Done',
                  buttonWidth: 327,
                  buttonHeight: 56,
                  onPressed: () {
                    debugPrint('Done is pressed');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
