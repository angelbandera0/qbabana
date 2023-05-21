part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class GetProductSend extends ProductState {}
class GetProductSuccess extends ProductState {}
class GetProductError extends ProductState {}

class AddProductSend extends ProductState {}
class AddProductSuccess extends ProductState {}
class AddProductError extends ProductState {}
