import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../ data/models/product_model.dart';
import '../../domain/use_cases/get_products.dart';
import '../screens/cart_screen.dart';
import '../screens/products_screen.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  static ProductsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
   List<Product> products =[];
   List<Product> Cartproducts =[];
  List<Widget>Screens =
  [
    ProductsScreen(),
    CartScreen(),
  ];
  List<BottomNavigationBarItem> NavBarItems =
  [
    BottomNavigationBarItem(icon: Icon(Icons.home),
      label: 'Home',),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
        label: 'Cart'),
  ];
   final GetProductsUseCase useCase;

  ProductsCubit(super.initialState, this.useCase);

  void getProducts()async{
    products= await useCase.call();
    emit(GetProductsSuccessState());
  }

  void AddProduct(Product product){
    Cartproducts.add(product);
    emit(AddProducts());
  }

  void ChangeNavBar(int index) {
    currentIndex = index;
    emit(NavBarState());
  }

  void RemoveProduct(Product product){
    Cartproducts.remove(product);
    emit(RemoveProducts());
  }


}
