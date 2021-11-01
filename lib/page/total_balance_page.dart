import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive/boxes.dart';
import 'package:flutter_hive/model/total_balance.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TotalBalancePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String? totalBalance = ModalRoute.of(context)!.settings.arguments as String?;
    
    var totalBalances = TotalBalance()..amount = totalBalance;
    var box = Boxes.getTotalBalance();

    
    box.put('totalBalance', totalBalances);
    print(box.keys);
    print(box.get('totalBalance')!.amount);
    final totalBalanceStr = box.get('totalBalance')!.amount;
    // print(box.keys);
    
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Total Balance'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Total Balance $totalBalanceStr',
        style: TextStyle(fontSize: 24),
        ),
      )
    );
  }
}