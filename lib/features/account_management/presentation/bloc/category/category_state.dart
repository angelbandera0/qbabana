part of 'category_bloc.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class GetCategorySend extends CategoryState {}
class GetCategorySuccess extends CategoryState {}
class GetCategoryError extends CategoryState {}

class AddCategorySend extends CategoryState {}
class AddCategorySuccess extends CategoryState {}
class AddCategoryError extends CategoryState {}
