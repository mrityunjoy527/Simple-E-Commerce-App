part of 'add_to_card_bloc.dart';

@immutable
abstract class AddToCartState {}

class AddToCardInitial extends AddToCartState {}

class NavigateToCartPageSuccessState extends AddToCartState{}

class NavigateToWishlistPageSuccessState extends AddToCartState{}

class NavigateToHomePageSuccessState extends AddToCartState{}

class AddProductToCartSuccessState extends AddToCartState{}

class AddProductToWishlistSuccessState extends AddToCartState{}

class RemoveProductFromCartSuccessState extends AddToCartState{
  final bool showCartPage;
  RemoveProductFromCartSuccessState(this.showCartPage);
}

class RemoveProductFromWishlistSuccessState extends AddToCartState{
  final bool showWishlistPage;
  RemoveProductFromWishlistSuccessState(this.showWishlistPage);
}

