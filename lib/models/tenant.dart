
import 'package:hive/hive.dart';

part 'tenant.g.dart';

@HiveType(typeId: 2)
class Tenant extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String phoneNumber;

  @HiveField(3)
  final String notes;

  Tenant({
    required this.id,
    required this.name,
    this.phoneNumber = '',
    this.notes = '',
  });
}
