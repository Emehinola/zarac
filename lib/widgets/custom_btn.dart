import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zacrac/constants.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final bool isOutlined;
  final Function() onTap;

  const CustomButton({super.key, required this.text, required this.isOutlined, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: isOutlined ? TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size(312, 50),
      ) : TextButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size(312, 50),
      ),
      child: Text(
        text,
        style: GoogleFonts.interTextTheme()
            .labelLarge
            ?.copyWith(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w200),
      ),
    );
  }
}
