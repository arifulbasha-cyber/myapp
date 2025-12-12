import 'package:hive/hive.dart';

part 'tariff.g.dart';

@HiveType(typeId: 2)
class TariffSlab extends HiveObject {
  @HiveField(0)
  int start;

  @HiveField(1)
  int end;

  @HiveField(2)
  double rate;

  TariffSlab({required this.start, required this.end, required this.rate});
}

@HiveType(typeId: 3)
class Tariff extends HiveObject {
  @HiveField(0)
  double demandCharge;

  @HiveField(1)
  double meterRent;

  @HiveField(2)
  double vatRate;

  @HiveField(3)
  double bkashFee;

  @HiveField(4)
  bool isBkashFeePercentage;

  @HiveField(5)
  List<TariffSlab> slabs;

  Tariff({
    required this.demandCharge,
    required this.meterRent,
    required this.vatRate,
    required this.bkashFee,
    required this.isBkashFeePercentage,
    required this.slabs,
  });
}
