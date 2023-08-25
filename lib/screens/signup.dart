import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zacrac/constants.dart';
import 'package:zacrac/routes.dart';
import 'package:zacrac/widgets/custom_btn.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/auth_image.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  const Color.fromRGBO(0, 0, 0, .1),
                  const Color.fromRGBO(0, 0, 0, .1),
                  const Color.fromRGBO(23, 23, 23, .8),
                  Colors.black.withOpacity(0.9),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/text.png', height: 78,),
                const SizedBox(height: 60),
                CustomButton(text: 'Sign up', isOutlined: false, onTap: () {}),
                const SizedBox(height: 20),
                CustomButton(text: 'Login', isOutlined: true, onTap: () => Navigator.pushNamed(context, Screen.expenses.name)),
                SizedBox(height: 0.03.sh,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
