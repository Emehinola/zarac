import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/paint/arc_one.dart';

import '../constants.dart';
import '../widgets/nav_bar.dart';


class CreditScore extends StatelessWidget {
  const CreditScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.navigate_before),
        ),
        title: const Text('Credit Score'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Stack(
          fit: StackFit.loose,
          children: [
            Positioned(
              top: 0.05.sh,
              left: 0,
              right: 0,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: DashedArcWidget(),
              ),
            ),
            Positioned(
              top: 0.1.sh,
              left: 0,
              right: 0,
              child: Body(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}

class Body extends StatelessWidget {
  Body({super.key});

  final date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Widget scoreCriteria({
      required String criteria,
      required String status,
      required String score,
      required String meta,
    }) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  criteria,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.neutral,
                      fontSize: 16.sp),
                ),
                const SizedBox(height: 8),
                Text(
                  status,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: status == "Good"
                          ? AppColors.greenAccent
                          : AppColors.orange),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  score,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.neutral,
                      fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text(
                  meta,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: status == "Good"
                          ? AppColors.neutralLight4
                          : AppColors.orange),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Column(
      children: [
        Column(
          children: [
            Text('Good', style: TextStyle(fontSize: 14.sp, color: AppColors.neutralLight3),),
            Text('660', style: TextStyle(fontSize: 48.sp, color: AppColors.neutral, fontWeight: FontWeight.w700),),
            Text('+6pts', style: TextStyle(fontSize: 14.sp, color: AppColors.primary),),
          ],
        ),
        const SizedBox(height: 30.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '400',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColors.neutralLight3),
              ),
              Text(
                'Last updated on ${date.day}-${date.month}-${date.year}',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColors.neutralLight4),
              ),
              Text(
                '850',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColors.neutralLight3),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.fromLTRB(14, 20, 14, 20),
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
          child: Column(
            children: [
              scoreCriteria(
                  criteria: "On-time payments",
                  status: 'Good',
                  score: "95%",
                  meta: "1 missed"),
              Divider(color: AppColors.neutralLight3),
              const SizedBox(height: 10),
              scoreCriteria(
                  criteria: "Credit Utilization",
                  status: 'Not bad',
                  score: "95%",
                  meta: "-15%"),
              Divider(color: AppColors.neutralLight3),
              const SizedBox(height: 10),
              scoreCriteria(
                  criteria: "Age of credit",
                  status: 'Good',
                  score: '8 year',
                  meta: "")
            ],
          ),
        )
      ],
    );
  }
}
