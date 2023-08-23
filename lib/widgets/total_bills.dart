import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class TotalBills extends StatefulWidget {
  final String monthlyBudget;
  final String remainder;

  const TotalBills(
      {super.key, required this.monthlyBudget, required this.remainder});

  @override
  State<TotalBills> createState() => _TotalBillsState();
}

class _TotalBillsState extends State<TotalBills> {
  double getPercentage(double value, double totalWidth) {
    return (value / 100) * totalWidth;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.neutralLight1),
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .06),
              blurRadius: 40,
              spreadRadius: -10,
              offset: Offset(0, 25),
            )
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Left to spend',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.neutralLight4),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    widget.remainder,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.neutral,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                        fontSize: 18.sp),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monthly budget',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.neutralLight4),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    widget.monthlyBudget,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.neutral,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                        fontSize: 18.sp),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 15),
          LayoutBuilder(
            builder: (_, constraints) => Stack(
              children: [
                Line(color: AppColors.lightGrey, width: 1.sw,),
                Line(color: AppColors.primary, width: 0.55.sw,),
                Line(color: AppColors.secondaryTwo, width: 0.27.sw,),
                Line(color: AppColors.secondary, width: 0.15.sw,),
              ],
            ),
          )
        ],
      ),
    );
  }
}



class ProgressValue extends StatelessWidget {
  final double width;
  final Color color;

  const ProgressValue({super.key, required this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}


class Line extends StatelessWidget {

  final double? height;
  final double width;
  final Color color;

  const Line({super.key, required this.width, this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 8,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6.0)),
    );
  }
}
