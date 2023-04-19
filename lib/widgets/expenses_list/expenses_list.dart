import 'package:flutter/material.dart';
import 'package:flutter_third_project/models/expense.dart';
import 'package:flutter_third_project/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});
  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: ((context, index) => Dismissible(
            onDismissed: (direction) {
              onRemoveExpense(expenses[index]);
            },
            key: ValueKey(expenses[index]),
            child: ExpenseItem(expenses[index]))));
  }
}
