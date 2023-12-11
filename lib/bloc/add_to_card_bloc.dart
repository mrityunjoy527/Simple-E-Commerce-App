import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled/product_data/data.dart';

import '../product_data/data_model.dart';

part 'add_to_card_event.dart';
part 'add_to_card_state.dart';

class AddToCartBloc extends Bloc<AddToCartEvent, AddToCartState> {
  AddToCartBloc() : super(AddToCardInitial()) {

    on<AddProductToCartEvent>((event, emit) {
      final data = Data();
      final product = event.productDataModel;
      product.isCarted = true;
      data.addCartProducts(product);
      emit(AddProductToCartSuccessState());
    });

    on<AddProductToWishlistEvent>((event, emit) {
      final data = Data();
      final product = event.productDataModel;
      product.isWishlisted = true;
      data.addWishlistProducts(product);
      emit(AddProductToWishlistSuccessState());
    });

    on<NavigateToHomePageEvent>((event, emit) {
      emit(NavigateToHomePageSuccessState());
    });

    on<NavigateToCartPageEvent>((event, emit) {
      emit(NavigateToCartPageSuccessState());
    });

    on<NavigateToWishlistPageEvent>((event, emit) {
      emit(NavigateToWishlistPageSuccessState());
    });

    on<RemoveProductFromCartEvent>((event, emit) {
      final data = Data();
      final product = event.productDataModel;
      product.isCarted = false;
      data.removeCartProducts(product);
      emit(RemoveProductFromCartSuccessState(event.isFromCartPage));
    });

    on<RemoveProductFromWishlistEvent>((event, emit) {
      final data = Data();
      final product = event.productDataModel;
      product.isWishlisted = false;
      data.removeWishlistProducts(product);
      emit(RemoveProductFromWishlistSuccessState(event.isFromWishlistPage));
    });

  }
}
