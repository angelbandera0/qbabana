import 'package:isar/isar.dart';

import 'product.dart';
part 'location.g.dart';
@Collection()
class LocationZone {
  @isarAutoIncrementId
  @Id()
  late int id;

  late String name;

  late String description;

  late DateTime createdAt;

  late DateTime updatedAt;

  final products = IsarLinks<Product>();
}