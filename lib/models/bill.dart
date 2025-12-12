import 'package:hive/hive.dart';
import 'package:myapp/models/reading.dart';
import 'package:myapp/models/tariff.dart';

part 'bill.g.dart';

@HiveType(typeId: 0)
class Bill extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  DateTime month;

  @HiveField(2)
  double totalBill;

  @HiveField(3)
  bool includeLateFee;

  @HiveField(4)
  bool includeBkashFee;

  @HiveField(5)
  double lateFee;

  @HiveField(6)
  List<Reading> readings;

  @HiveField(7)
  Tariff tariff;
  
  @HiveField(8)
  DateTime createdAt;

  Bill({
    required this.id,
    required this.month,
    required this.totalBill,
    required this.includeLateFee,
    required this.includeBkashFee,
    required this.lateFee,
    required this.readings,
    required this.tariff,
    required this.createdAt,
  });
}
