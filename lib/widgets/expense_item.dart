import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/widgets/total_bills.dart';

import '../constants.dart';

class ExpenseItem extends StatelessWidget {
  final Color expenseItemColor;
  final String expense;
  final int totalAllowance;
  final int remainder;
  final double active;

  const ExpenseItem(
      {super.key,
      required this.expenseItemColor,
      required this.totalAllowance,
      required this.remainder,
      required this.expense,
      required this.active,
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 222,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expense,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppColors.neutral,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                child: Stack(
                  children: [
                    Line(width: 1.sw, color: AppColors.lightGrey, height: 4.0,),
                    Line(width: active, color: expenseItemColor, height: 4.0,),
                  ],
                ),
              )
            ],
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$$totalAllowance',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppColors.neutral,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                'Left \$$remainder',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: AppColors.neutralLight3, fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}
