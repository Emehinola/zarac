import 'package:flutter/material.dart';
import 'package:zacrac/screens/bill_page.dart';

import 'screens/credit_score.dart';
import 'screens/expenses.dart';
import 'screens/signup.dart';

enum Screen { auth, expenses, bill, score }

class Screens {
  final Map<String, Widget Function(BuildContext)> _routes = {
    Screen.auth.name : (context) => const SignIn(),
    Screen.expenses.name: (context) => const Expenses(),
    Screen.bill.name: (context) => const BillsPage(),
    Screen.score.name: (context) => CreditScore()
  };

  Map<String, Widget Function(BuildContext)> get routes => _routes;
}