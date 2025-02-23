import 'package:flutter/cupertino.dart';
import 'package:flutter_finance_tracker/data/dtos/transaction_dto.dart';

class MyListSection extends StatelessWidget {
  final String header;
  final List<TransactionDTO> children;
  const MyListSection(
      {required this.header, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      header: Text(header),
      children: children
          .map((transaction) => CupertinoListTile(
                title: Text(transaction.description ?? transaction.category),
                subtitle: Text(transaction.date.toString()),
                trailing: Text('\$${transaction.amount.toStringAsFixed(2)}'),
              ))
          .toList(),
    );
  }
}
