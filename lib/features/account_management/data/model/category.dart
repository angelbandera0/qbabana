import 'package:isar/isar.dart';
import 'package:qbabana/features/account_management/data/model/product.dart';
part 'category.g.dart';
@Collection()
class Category {
  @isarAutoIncrementId
  @Id()
  late int id = Isar.autoIncrement;

  late String name;

  late DateTime createdAt;

  late DateTime updatedAt;

  final productss = IsarLinks<Product>();
}
