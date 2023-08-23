import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zacrac/model/subscribed_item.dart';

import '../constants.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  late double total;

  double calculateTotal() {
    var total = 0.0;
    for (var element in _item) {
      total += element.amountPerMonth;
    }
    return total;
  }

  @override
  void initState() {
    super.initState();
    total = calculateTotal();
  }

  final List<SubscribedItem> _item = [
    SubscribedItem(
        picture: "assets/icons/Patreon.png",
        name: 'Patreon membership',
        amountPerMonth: 19.99),
    SubscribedItem(
        picture: "assets/icons/netflix.png",
        name: 'Netflix',
        amountPerMonth: 12),
    SubscribedItem(
        picture: "assets/icons/apple.png",
        name: 'Apple payment',
        amountPerMonth: 19.99),
    SubscribedItem(
        picture: "assets/icons/Spotify.png",
        name: 'Spotify',
        amountPerMonth: 6.99)
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Column(
        children: [
          SizedBox(
            width: 159,
            child: Text(
              'Your monthly payment for subcriptions',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: AppColors.neutral),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '\$61.88',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: AppColors.neutral,
                fontWeight: FontWeight.w700,
                fontSize: 48),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 20, 14, 20),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.neutralLight1),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0),
                    blurRadius: 40,
                    spreadRadius: -10,
                    offset: const Offset(0, 25),
                  )
                ]),
            child: Column(
              children: _item
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(e.picture, height: 36, width: 36,),
                        title: Text(e.name, style: TextStyle(fontSize: 14.sp),),
                        subtitle: Text(
                          '\$${e.amountPerMonth}/mo',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: AppColors.neutral),
                        ),
                        trailing:
                             Icon(Icons.navigate_next_rounded, size: 32, color: AppColors.iconGrey,),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
