import 'package:flutter/material.dart';
import 'package:flutter_hive/model/transaction.dart';
import 'package:flutter_hive/model/total_balance.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_hive/page/transaction_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(TransactionAdapter());
  Hive.openBox<Transaction>('transactions');
  await Hive.openBox<TotalBalance>('totalBalance');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hive',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: TransactionPage(),
    );
  }
}
