
import 'package:flutter/material.dart';
import 'package:zacrac/constants.dart';
import 'package:zacrac/widgets/subscription.dart';

import '../routes.dart';
import '../widgets/nav_bar.dart';

class BillsPage extends StatelessWidget {
  const BillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.navigate_before),
          ),
          title: const Text('Bill'),
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Screen.score.name),
              icon: const Icon(Icons.add),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: AppColors.neutral,
            labelColor: AppColors.primary,
            labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontFamily: 'Averta',
                fontWeight: FontWeight.w600,
                color: AppColors.neutral),
            indicatorColor: AppColors.primary,
            tabs: const [
              Tab(
                text: 'Bills',
              ),
              Tab(text: 'Payments'),
              Tab(text: 'Subscription')
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Bills")),
            Center(child: Text("Payments")),
            Subscription()
          ],
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
