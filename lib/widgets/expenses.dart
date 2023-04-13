import 'package:flutter/cupertino.dart';
import 'package:flutter_third_project/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_third_project/widgets/expenses_list/expenses_list.dart';

import '../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({key}) : super(key: key);

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        amount: 19.99,
        title: 'Flutter Course',
        date: DateTime.now(),
        category: Category.work),
    Expense(
        amount: 17.99,
        title: 'Cinema',
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
