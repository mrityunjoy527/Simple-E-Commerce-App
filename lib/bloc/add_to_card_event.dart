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

class RemoveProductFromWishlistEvent extends AddToCartEvent{
  final ProductDataModel productDataModel;
  final bool isFromWishlistPage;
  RemoveProductFromWishlistEvent(this.isFromWishlistPage, {required this.productDataModel});
}

class RemoveProductFromCartEvent extends AddToCartEvent{
  final ProductDataModel productDataModel;
  final bool isFromCartPage;
  RemoveProductFromCartEvent(this.isFromCartPage, {required this.productDataModel});
}
