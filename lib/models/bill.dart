
import 'package:hive/hive.dart';

part 'bill.g.dart';

@HiveType(typeId: 0)
class Bill extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final DateTime month;

  @HiveField(2)
  final double totalBillAmount;

  @HiveField(3)
  final bool includeLateFee;

  @HiveField(4)
  final double lateFee;

  @HiveField(5)
  final bool includeBkashFee;

  @HiveField(6)
  final double bkashFee;

  @HiveField(7)
  final List<String> tenantIds;

  @HiveField(8)
  final DateTime createdAt;

  @HiveField(9)
  final DateTime updatedAt;

  Bill({
    required this.id,
    required this.month,
    required this.totalBillAmount,
    this.includeLateFee = false,
    this.lateFee = 0.0,
    this.includeBkashFee = false,
    this.bkashFee = 0.0,
    required this.tenantIds,
    required this.createdAt,
    required this.updatedAt,
  });

  Bill copyWith({
    String? id,
    DateTime? month,
    double? totalBillAmount,
    bool? includeLateFee,
    double? lateFee,
    bool? includeBkashFee,
    double? bkashFee,
    List<String>? tenantIds,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Bill(
      id: id ?? this.id,
      month: month ?? this.month,
      totalBillAmount: totalBillAmount ?? this.totalBillAmount,
      includeLateFee: includeLateFee ?? this.includeLateFee,
      lateFee: lateFee ?? this.lateFee,
      includeBkashFee: includeBkashFee ?? this.includeBkashFee,
      bkashFee: bkashFee ?? this.bkashFee,
      tenantIds: tenantIds ?? this.tenantIds,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
