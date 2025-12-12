import 'package:hive/hive.dart';

part 'tenant.g.dart';

@HiveType(typeId: 1)
class Tenant extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? phoneNumber;

  Tenant({required this.id, required this.name, this.phoneNumber});
}
