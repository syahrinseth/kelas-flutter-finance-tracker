import 'package:flutter/cupertino.dart';
import 'package:flutter_finance_tracker/data/dtos/transaction_dto.dart';
import 'package:flutter_finance_tracker/widgets/my_list_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TransactionDTO> _transactions = [
    {
      'id': 1,
      'title': 'Salary',
      'amount': 5000.00,
      'date': '2022-01-01',
      'type': 'income',
      'category': 'Housing',
    },
    {
      'id': 2,
      'title': 'Rent',
      'amount': -1000.00,
      'date': '2022-01-02',
      'type': 'expense',
      'category': 'Housing',
    },
    {
      'id': 3,
      'title': 'Groceries',
      'amount': -200.00,
      'date': '2022-01-03',
      'type': 'expense',
      'category': 'Housing',
    },
    {
      'id': 4,
      'title': 'Salary',
      'amount': 5000.00,
      'date': '2022-01-01',
      'type': 'income',
      'category': 'Housing',
    },
    {
      'id': 5,
      'title': 'Rent',
      'amount': -1000.00,
      'date': '2022-01-02',
      'type': 'expense',
      'category': 'Housing',
    },
    {
      'id': 6,
      'title': 'Groceries',
      'amount': -200.00,
      'date': '2022-01-03',
      'type': 'expense',
      'category': 'Housing',
    },
    {
      'id': 7,
      'title': 'Salary',
      'amount': 5000.00,
      'date': '2022-01-01',
      'type': 'income',
      'category': 'Housing',
    },
    {
      'id': 8,
      'title': 'Rent',
      'amount': -1000.00,
      'date': '2022-01-02',
      'type': 'expense',
      'category': 'Housing',
    },
    {
      'id': 9,
      'title': 'Groceries',
      'amount': -200.00,
      'date': '2022-01-03',
      'type': 'expense',
      'category': 'Housing',
    },
    {
      'id': 10,
      'title': 'Rent',
      'amount': -1000.00,
      'date': '2022-01-02',
      'type': 'expense',
      'category': 'Housing',
    },
    {
      'id': 11,
      'title': 'Groceries',
      'amount': -200.00,
      'date': '2022-01-03',
      'type': 'expense',
      'category': 'Housing',
    },
  ].map((json) => TransactionDTO.fromJson(json)).toList();

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chart_bar),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          )
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Finance Tracker'),
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyListSection(
                    header: 'Transaction',
                    children: _transactions,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
