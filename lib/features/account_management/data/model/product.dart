import 'package:isar/isar.dart';

import 'location.dart';
part 'product.g.dart';
@Collection()
class Product {
  @Id()
  late int id;

  late String theFirstName;

  late String familyNameOrWhatever;

  late String description;

  late DateTime createdAt;

  late DateTime updatedAt;

  @Backlink(to: 'products')
  final student = IsarLinks<LocationZone>();
}
