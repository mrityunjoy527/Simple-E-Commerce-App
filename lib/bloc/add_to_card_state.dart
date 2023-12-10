part of 'add_to_card_bloc.dart';

@immutable
abstract class AddToCartState {}

class AddToCardInitial extends AddToCartState {}

class NavigateToCartPageSuccessState extends AddToCartState{}

class NavigateToWishlistPageSuccessState extends AddToCartState{}

class NavigateToHomePageSuccessState extends AddToCartState{}

class AddProductToCartSuccessState extends AddToCartState{}

class AddProductToWishlistSuccessState extends AddToCartState{}

