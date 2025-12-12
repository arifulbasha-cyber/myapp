
import 'package:hive/hive.dart';

part 'tariff.g.dart';

@HiveType(typeId: 3)
class Tariff extends HiveObject {
  @HiveField(0)
  final double demandCharge;

  @HiveField(1)
  final double meterRent;

  @HiveField(2)
  final double vatRate;

  @HiveField(3)
  final double bkashFeePercentage;

  @HiveField(4)
  final List<Slab> slabs;

  Tariff({
    required this.demandCharge,
    required this.meterRent,
    required this.vatRate,
    required this.bkashFeePercentage,
    required this.slabs,
  });
}

@HiveType(typeId: 4)
class Slab extends HiveObject {
  @HiveField(0)
  final int start;

  @HiveField(1)
  final int end;

  @HiveField(2)
  final double rate;

  Slab({
    required this.start,
    required this.end,
    required this.rate,
  });
}
