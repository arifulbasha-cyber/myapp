
import 'package:hive/hive.dart';

part 'reading.g.dart';

@HiveType(typeId: 1)
class Reading extends HiveObject {
  @HiveField(0)
  final String tenantId;

  @HiveField(1)
  final double previous;

  @HiveField(2)
  final double current;

  Reading({
    required this.tenantId,
    required this.previous,
    required this.current,
  });

  double get units => current - previous;
}
