import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/add_to_card_bloc.dart';
import 'package:untitled/screens/cart/cart_page.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/wishlist/wishlist_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AddToCartBloc>(
        create: (context) => AddToCartBloc(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AddToCartBloc>().add(NavigateToHomePageEvent());
    return BlocBuilder<AddToCartBloc, AddToCartState>(
      builder: (context, state) {
        if(state is RemoveProductFromCartSuccessState) {
          if(state.showCartPage) return const Cart();
        }else if(state is RemoveProductFromWishlistSuccessState) {
          if(state.showWishlistPage) return const WishList();
        } else if (state is NavigateToCartPageSuccessState) {
          return const Cart();
        } else if (state is NavigateToWishlistPageSuccessState) {
          return const WishList();
        }
        return const Home();
      },
    );
  }
}
