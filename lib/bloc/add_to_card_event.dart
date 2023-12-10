part of 'add_to_card_bloc.dart';

@immutable
abstract class AddToCartEvent {}

class NavigateToHomePageEvent extends AddToCartEvent{}

class NavigateToCartPageEvent extends AddToCartEvent{}

class NavigateToWishlistPageEvent extends AddToCartEvent{}

class AddProductToCartEvent extends AddToCartEvent{
  final ProductDataModel productDataModel;
  AddProductToCartEvent({required this.productDataModel});
}

class AddProductToWishlistEvent extends AddToCartEvent{
  final ProductDataModel productDataModel;
  AddProductToWishlistEvent({required this.productDataModel});
}
