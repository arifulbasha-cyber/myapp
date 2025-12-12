import 'package:hive/hive.dart';
import 'package:myapp/models/tenant.dart';

part 'reading.g.dart';

@HiveType(typeId: 4)
class Reading extends HiveObject {
  @HiveField(0)
  Tenant tenant;

  @HiveField(1)
  double previous;

  @HiveField(2)
  double current;

  Reading({
    required this.tenant,
    required this.previous,
    required this.current,
  });

  double get units => current - previous;
}
