part of 'category_bloc.dart';

@immutable
abstract class CategoryEvent {}

class GetCategorysEvent extends CategoryEvent {}
class AddCategorysEvent extends CategoryEvent {
  final String name;

  AddCategorysEvent(this.name);

}


