import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_hive/model/total_balance.dart';
import 'package:flutter_hive/boxes.dart';

class TotalBalancePage extends StatefulWidget {
  @override
  _TotalBalancePageState createState() => _TotalBalancePageState();
}

class _TotalBalancePageState extends State<TotalBalancePage> {
  @override
  Widget build(BuildContext context) {
    final amountBalance = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Total Balance'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder<Box<TotalBalance>>(
        valueListenable: Boxes.getTotalBalance().listenable(),
        builder: (context, box, _) {
          final totalBalance = box.get('totalBalance');
          return buildContent(totalBalance, amountBalance);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.summarize),
        onPressed: () => {addTotalBalance(amountBalance)},
      ),
    );
  }

  Widget buildContent(var totalBalance, var amountBalance) {
    if (totalBalance == null) {
      return Center(
        child: Text(
          'No Total in here',
        ),
      );
    } else {
      return Column(
        children: [
          SizedBox(height: 24),
          Text(
            'Total Balance $totalBalance',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      );
    }
  }

  Future addTotalBalance(var amountBalance) async {
    final totalBalance = TotalBalance()..amount = amountBalance;
    final box = Boxes.getTotalBalance();
    box.put('totalBalance', totalBalance);
  }
}
