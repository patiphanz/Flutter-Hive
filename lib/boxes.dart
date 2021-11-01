import 'package:hive/hive.dart';
import 'package:flutter_hive/model/transaction.dart';
import 'package:flutter_hive/model/total_balance.dart';

class Boxes {
  static Box<Transaction> getTransactions() =>
      Hive.box<Transaction>('transactions');
  static Box<TotalBalance> getTotalBalance() =>
      Hive.box<TotalBalance>('totalBalance');
}
