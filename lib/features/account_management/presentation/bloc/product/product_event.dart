part of 'product_bloc.dart';

@immutable
abstract class ProductEvent {}

class GetProductEvent extends ProductEvent {}
class AddProductEvent extends ProductEvent {
  final Product product;

  AddProductEvent(this.product);

}


