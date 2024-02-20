import 'package:auto_route/auto_route.dart';
import 'package:find_movie/auto_route.gr.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:find_movie/widgets/const.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView(
              children: <Widget>[
                Image.asset('assets/images/logo.png', height: 250),
                const SizedBox(height: 50),
                const Text('Logowanie',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.appColor)),
                const SizedBox(height: 16),
                TextFormWidget(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  width: 10,
                  height: 10,
                  labelText: 'Twój e-mail',
                  onChanged: (value) {
                    // Handle email changed
                  },
                  prefixIconPath: 'assets/icons/email.svg',
                ),
                const SizedBox(height: 16),
                TextFormWidget(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  width: 10,
                  height: 10,
                  labelText: 'Twoje hasło',
                  onChanged: (value) {
                    // Handle password changed
                  },
                  prefixIconPath: 'assets/icons/lock.svg',
                  obscureText: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Handle forgot password
                    },
                    child: const Text('Nie pamiętasz hasła?',
                        style: TextStyle(
                          color: AppColors.appColor,
                        )),
                  ),
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    // Handle log in
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFF251605),
                      backgroundColor: AppColors.appColor,
                      fixedSize: const Size(50, 50)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'ZALOGUJ SIĘ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <InlineSpan>[
                          const TextSpan(
                            text: 'Nie masz konta?  ',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          TextSpan(
                            text: 'Zarejestruj się.',
                            style: const TextStyle(
                                color: AppColors.appColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.router
                                    .push(const RegisterScreenRoute());
                              },
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFormWidget extends StatelessWidget {
  final String labelText;
  final Function(String) onChanged;
  final bool obscureText;
  final String? prefixIconPath;
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const TextFormWidget({
    Key? key,
    required this.labelText,
    required this.onChanged,
    this.obscureText = false,
    this.prefixIconPath,
    required this.width,
    required this.height,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.fontColor),
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.iconColor,
        ),
        labelText: labelText,
        prefixIcon: prefixIconPath != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  prefixIconPath!,
                  fit: BoxFit.scaleDown,
                  width: width,
                  height: height,
                  color: AppColors.iconColor,
                ),
              )
            : null,
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: AppColors.fontColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFA9FFCB),
          ),
        ),
      ),
      obscureText: obscureText,
      onChanged: onChanged,
    );
  }
}
