import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/constants.dart';

class Bills extends StatefulWidget {
  final Color widgetColor;
  final String billIconWidget;
  final String widgetName;
  final int totalBudget;
  final List<Widget> expenses;
  const Bills(
      {super.key,
      required this.widgetColor,
      required this.widgetName,
      required this.billIconWidget,
      required this.totalBudget,
      required this.expenses});

  @override
  State<Bills> createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  Widget expenseOverhead() => Row(
        children: [
          Container(
            width: 45,
            height: 45,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: widget.widgetColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(widget.billIconWidget),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              widget.widgetName,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 16.sp),
            ),
          ),
          const SizedBox(width: 72),
          Text(
            '\$${widget.totalBudget}',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.neutralLight3, fontSize: 16.sp),
          ),
        ],
      );

  List<Widget> body() =>
      [expenseOverhead(), const SizedBox(height: 20), ...widget.expenses];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 24, 20),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.neutralLight1),
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .06),
              blurRadius: 40,
              spreadRadius: -10,
              offset: Offset(0, 25),
            )
          ]),
      child: Column(children: body()),
    );
  }
}
