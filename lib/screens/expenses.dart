import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/constants.dart';
import 'package:zacrac/routes.dart';
import 'package:zacrac/widgets/bills.dart';
import 'package:zacrac/widgets/nav_bar.dart';
import 'package:zacrac/widgets/total_bills.dart';
import '../widgets/expense_item.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  int monthlyBudget = 2550;
  int remainder = 738;
  int transport = 700;
  int utilities = 320;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.navigate_before,
              weight: 0.1,
            ),
          ),
          title: Text('Expenses', style: TextStyle(fontSize: 18.sp)),
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Screen.bill.name),
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Align(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20.0),
                      height: 40,
                      child: DropdownButton(
                        underline: const SizedBox(),
                        padding: EdgeInsets.zero,
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              'September 2020',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontFamily: 'Averta',
                                      color: AppColors.neutral),
                            ),
                          ),
                        ],
                        onChanged: (val) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        "\$1,812",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                fontSize: 30.sp,
                                color: AppColors.neutral,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
              const TotalBills(monthlyBudget: '\$2,550', remainder: '\$738'),
              const SizedBox(height: 20),
              Bills(
                billIconWidget: 'assets/icons/car.png',
                widgetColor: AppColors.primary,
                widgetName: 'Auto & Transport',
                totalBudget: 700,
                expenses: [
                  ExpenseItem(
                      expenseItemColor: AppColors.primary,
                      totalAllowance: 350,
                      remainder: 90,
                      active: 0.4.sw,
                      expense: 'Auto & Transport'),
                  const SizedBox(height: 30),
                  ExpenseItem(
                      expenseItemColor: AppColors.primary,
                      totalAllowance: 250,
                      remainder: 120,
                      active: 0.25.sw,
                      expense: 'Auto insurance'),
                ],
              ),
              const SizedBox(height: 20),
              Bills(
                billIconWidget: 'assets/icons/receipt-text.png',
                widgetColor: AppColors.secondary,
                widgetName: 'Bills & Utilities',
                totalBudget: 320,
                expenses: [
                  ExpenseItem(
                      expenseItemColor: AppColors.secondary,
                      totalAllowance: 52,
                      remainder: 0,
                      active: 1.sw,
                      expense: 'Subscriptions'),
                  const SizedBox(height: 30),
                  ExpenseItem(
                      expenseItemColor: AppColors.secondary,
                      totalAllowance: 138,
                      remainder: 10,
                      active: 0.5.sw,
                      expense: 'House service'),
                  const SizedBox(height: 30),
                  ExpenseItem(
                      expenseItemColor: AppColors.secondary,
                      totalAllowance: 130,
                      remainder: 30,
                      active: 0.4.sw,
                      expense: 'Maintenance'),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  )
                ],
              ),
              const SizedBox(height: 20.0,),
            ],
          ),
        ),
        bottomNavigationBar: const AppBottomNavigationBar());
  }
}
