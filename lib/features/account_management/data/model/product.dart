import 'package:isar/isar.dart';

import 'category.dart';
import 'location.dart';
part 'product.g.dart';

@Collection()
class Product {
  @isarAutoIncrementId
  @Id()
  late int id = Isar.autoIncrement;

  late String theFirstName;

  late String familyNameOrWhatever;

  late String description;

  late DateTime createdAt;

  late DateTime updatedAt;

  @Backlink(to: 'products')
  final student = IsarLinks<LocationZone>();

  @Backlink(to: 'productss')
  final category = IsarLinks<Category>();
}
