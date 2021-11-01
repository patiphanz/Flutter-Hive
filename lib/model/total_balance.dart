import 'package:hive/hive.dart';

part 'total_balance.g.dart';

@HiveType(typeId: 1)
class TotalBalance extends HiveObject {
  @HiveField(0)
  var amount;
}
